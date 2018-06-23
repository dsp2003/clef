oldMeleeAttack = {}

--allow force entering state without canStartSkill
function oldMeleeAttack.enterWith(args)
  if not args.oldMeleeAttack then return nil end

  return { didAttack = false, wasInRange = false }
end

function oldMeleeAttack.enter()
  if not canStartSkill("oldMeleeAttack") then return nil end

  return { didAttack = false, wasInRange = false }
end

function oldMeleeAttack.enteringState(stateData)
  setAggressive(true, false)
  entity.setAnimationState("attack", "melee")

  stateData.projectileSourcePosition = {
      entity.configParameter("projectileSourcePosition", {0, 0})[1] + entity.configParameter("meleeProjectileOffset", {0, 0})[1] - 1.0,
      entity.configParameter("projectileSourcePosition", {0, 0})[2] + entity.configParameter("meleeProjectileOffset", {0, 0})[2]
    }

  entity.setActiveSkillName("oldMeleeAttack")
end

function oldMeleeAttack.update(dt, stateData)
  if not canContinueSkill() then return true end

  entity.setAnimationState("movement", "run")

  local attackCompletion = (entity.configParameter("oldMeleeAttack.skillTimeLimit") - self.skillTimer) / entity.configParameter("oldMeleeAttack.skillTimeLimit")

  local baseRunSpeed = mcontroller.baseParameters().runSpeed

  if baseRunSpeed < 11.0 then
    mcontroller.controlParameters({runSpeed=11.0})
  elseif baseRunSpeed > 15.0 then
    mcontroller.controlParameters({runSpeed=15.0})
  end

  mcontroller.controlParameters({groundForce=50})

  -- if attackCompletion <= 0.5 then
  --   moveX(self.toTarget[1])
  -- else
  --   moveX(-self.toTarget[1])
  -- end

  -- if attackCompletion <= 0.25 or attackCompletion >= 0.75 then
  --   entity.applyMovementParameters({runSpeed=10.0})
  -- else
  --   entity.applyMovementParameters({runSpeed=7.0})
  -- end

  if stateData.wasInRange == false and math.abs(self.toTarget[1]) > math.abs(entity.configParameter("projectileSourcePosition", {0, 0})[1]) + 1.0 then
    moveX(self.toTarget[1], true)
  else
    stateData.wasInRange = true
    moveX(-self.toTarget[1], true)
  end
  mcontroller.controlFace(self.toTarget[1])
  
  if stateData.didAttack == false and attackCompletion >= 0.25 then
    local projectileStartPosition = entity.toAbsolutePosition(stateData.projectileSourcePosition)
    local projectileName = entity.configParameter("meleeProjectile") or entity.configParameter("oldMeleeAttack.projectile")
    local power = root.evalFunction("monsterLevelPowerMultiplier", entity.level()) * entity.configParameter("oldMeleeAttack.power")
    world.spawnProjectile(projectileName, projectileStartPosition, entity.id(), {mcontroller.facingDirection(), 0}, true, {speed = 7.0, power = power})
    stateData.didAttack = true
  end

  return false
end

function oldMeleeAttack.leavingState(stateData)
  
end
