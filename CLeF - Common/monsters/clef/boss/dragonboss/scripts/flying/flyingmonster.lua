-- Original by CF
-- modified flyingmonster.lua, for dragonboss fixes by LoPhatKao
-- Please do not remove this notice from any derivatives of this file

function init(args)
  self.position = {0, 0}

  self.target = 0
  self.toTarget = {0, 0}

  self.aggressive = entity.configParameter("aggressive", true)

  self.targetSearchTimer = 0
  self.targetHoldTimer = 0
  self.attackCooldownTimer = 0
  
  self.soundTimer = 0 --lpk: for the pain/idle sounds

  self.sensors = sensors.create()

  self.debug = false --dsp2003: we no longer need debug

  local scripts = entity.configParameter("scripts")

  local states = stateMachine.scanScripts(scripts, "(%a+State)%.lua")
  self.state = stateMachine.create(states)

  local attacks = {}
  local attackStateTables = {}
  for i, skillName in ipairs(entity.configParameter("skills")) do
    local params = entity.configParameter(skillName)

    --create generic attacks from factories
    if params and params.factory then
      if type(_ENV[params.factory]) == "function" then
        if not _ENV[skillName] then
          _ENV[skillName] = _ENV[params.factory](skillName)
        else
          world.logInfo("Failed to create attack %s from factory %s: Table %s already exists in this context", skillName, params.factory, skillName)
        end
      else
        world.logInfo("Failed to create attack %s from factory %s: factory function does not exist in this context", skillName, params.factory)
      end
    end

    if _ENV[skillName] then
      table.insert(attacks, 1, skillName)
    end
  end

  self.attackState = stateMachine.create(attacks, attackStateTables)
  self.attackState.autoPickState = false

  self.attackState.enteringState = function(state)
    entity.setActiveSkillName(state)
    setAggressive(true)
    self.attackState.moveStateToEnd(state)
    
 -- lpk: play attack sound
    local atksnd = entity.randomizeParameter("attackSound") 
    if entity.hasSound(atksnd) then entity.playSound(atksnd) end

  end

  self.attackState.leavingState = function(state)
    setAggressive(false)
    entity.setActiveSkillName(nil)
    self.attackCooldownTimer = entity.configParameter("attackCooldownTime")
  end

  entity.setDeathSound("deathPuff")
  entity.setDeathParticleBurst(entity.configParameter("deathParticles"))

  mcontroller.controlFace(util.randomDirection())
  entity.setAnimationState("movement", "flying")
  setAggressive(true)
end

function isFlyer()
  return true
end

function damage(args)
--world.logInfo("%s - %s",entity.id(),args)
 -- lpk: fix for dragon targeting self
  if args.sourceId ~= entity.id() then 
    setTarget(args.sourceId)
  else -- and damaging itself .. sorta
    status.setResource("health", entity.health() + args.damage)
  end
  
  if entity.health() > 0 then
  
-- lpk: play pain sound
  if self.soundTimer < 0 then 
    local painsnd = entity.randomizeParameter("painSound")  
    if entity.hasSound(painsnd) then entity.playSound(painsnd) end
    self.soundTimer = entity.configParameter("soundTimeWait", 1)
  end
  
    self.state.endState()
  end
end

function setAggressive(enabled)
  if enabled then
    entity.setAggressive(true)
    entity.setDamageOnTouch(true)
    self.aggressive = true
  else
    entity.setDamageOnTouch(entity.configParameter("alwaysDamageOnTouch", false))
    entity.setAggressive(self.aggressive)
  end
end

function update(dt)
  self.position = mcontroller.position()

  local stuns = status.statusProperty("stuns", {})
  local slows = status.statusProperty("slows", {})

  local stunned = false
  for k, v in pairs(stuns) do
    stunned = true
    entity.setAnimationRate(0)
    break
  end
  if not stunned then
    local animSpeed = 1.0
    for k, v in pairs(slows) do
      animSpeed = animSpeed * v
    end
    entity.setAnimationRate(animSpeed)
  end

  if stunned then
    --do nothing
  else
    if entity.animationState("movement") ~= "flyingAttack" and entity.animationState("movement") ~= "gliding" then
      entity.setAnimationState("movement", "flying")
    end

    trackTarget()
    
    -- Attacks can interrupt any normal state
    if self.target ~= 0 then
      if attacking() then
        local attackMaxDistance = entity.configParameter("attackMaxDistance", math.huge)

        if world.magnitude(self.toTarget) > attackMaxDistance then
          self.attackState.endState()
        else
          self.attackState.update(dt)
        end
      else
        local attackStartDistance = entity.configParameter("attackStartDistance")

        if world.magnitude(self.toTarget) <= attackStartDistance and self.attackCooldownTimer <= 0 then
          self.attackState.pickState()
        end
      end
    end

    if not attacking() then
      setAggressive(false)
      self.state.update(dt)
    end
  end

  decrementTimers()

  script.setUpdateDelta(hasTarget() and 1 or 10)

  if self.debug then
    if attacking() then
      world.debugText(self.attackState.stateDesc(), entity.toAbsolutePosition({ 0, 2 }), "red")
    elseif self.state.hasState() then
      world.debugText(self.state.stateDesc(), entity.toAbsolutePosition({ 0, 2 }), "blue")
    end

    for i, groundSensorIndex in ipairs({ 3, 2, 1 }) do
      local sensor = self.sensors.groundSensors.collisionTrace[groundSensorIndex]
      if sensor.value then
        world.debugLine(mcontroller.position(), sensor.position, "green")
        world.debugPoint(sensor.position, "green")
      else
        world.debugLine(mcontroller.position(), sensor.position, "red")
        world.debugPoint(sensor.position, "red")
      end
    end
  end

  self.sensors.clear()
end

function trackTarget()
  -- Keep holding on our target while we are attacking
  if not world.entityExists(self.target) or (not attacking() and self.targetHoldTimer <= 0) then
    setTarget(0)
  end

  if self.aggressive and self.target == 0 and self.targetSearchTimer <= 0 then
    setTarget(entity.closestValidTarget(entity.configParameter("targetRadius")))
    self.targetSearchTimer = entity.configParameter("targetSearchTime")
  end

  if self.target == 0 then
    self.toTarget = {0, 0}
  else
    self.toTarget = entity.distanceToEntity(self.target)
  end
end

function setTarget(target)
  if target ~= 0 then
    self.targetHoldTimer = entity.configParameter("targetHoldTime")

    if self.target ~= target then
      entity.playSound("turnHostile")

      -- Don't attack immediately when turning aggressive
      self.attackCooldownTimer = entity.configParameter("attackCooldownTime")
    end
  end

  self.target = target
end

function hasTarget()
  return self.target ~= 0
end

function decrementTimers()
  dt = script.updateDt()

  self.targetSearchTimer = self.targetSearchTimer - dt
  self.targetHoldTimer = self.targetHoldTimer - dt
  self.attackCooldownTimer = self.attackCooldownTimer - dt
  self.soundTimer = self.soundTimer - dt --lpk
end

function attacking()
  return self.attackState.hasState()
end