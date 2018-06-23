oldPounceAttack = {}

function oldPounceAttack.loadSkillParameters()
  local params = entity.configParameter("oldPounceAttack")

  local jumpSpeed = oldPounceAttack.jumpSpeed()
  local maxJumpDistance = 0.8 * ( (jumpSpeed * jumpSpeed * 0.7071) / (world.gravity(mcontroller.position()) * 1.5) )
  local tolerance = {-1, -9.0, 6, 7}

  params.approachPoints = { {-(maxJumpDistance), 3}, {(maxJumpDistance), 3} }
  params.startRects = {}
  for i, point in ipairs(params.approachPoints) do
    if point[1] > 0 then
      params.startRects[i] = {point[1] + tolerance[1], point[2] + tolerance[2], point[1] + tolerance[3], point[2] + tolerance[4]}
    else
      params.startRects[i] = {point[1] - tolerance[3], point[2] + tolerance[2], point[1] - tolerance[1], point[2] + tolerance[4]}
    end
  end

  return params
end

function oldPounceAttack.jumpSpeed()
  return math.min(mcontroller.baseParameters().airJumpProfile.jumpSpeed * entity.configParameter("oldPounceAttack.jumpSpeedMultiplier"), entity.configParameter("oldPounceAttack.jumpSpeedMax"))
end

function oldPounceAttack.enter()
  if not canStartSkill("oldPounceAttack") then return nil end

  mcontroller.controlFace(self.toTarget[1])

  return {
    winddownTime = 0.0,
    windupTime = entity.configParameter("oldPounceAttack.windupTime"),
    followThrough = false
  }
end

function oldPounceAttack.enteringState(stateData)
  entity.setAnimationState("attack", "idle")
  entity.setActiveSkillName("oldPounceAttack")
end

function oldPounceAttack.update(dt, stateData)
  if not canContinueSkill() then return true end

  mcontroller.controlParameters({airFriction=0})

  if stateData.windupTime > 0 then
    stateData.windupTime = stateData.windupTime - dt

    entity.setAnimationState("movement", "chargeWindup")
    faceTarget()

  elseif not stateData.followThrough then
    setAggressive(true, true)
    entity.setAnimationState("movement", "jump")

    stateData.pounceJumpHoldTime = entity.configParameter("oldPounceAttack.jumpHoldTime")
    stateData.pounceWasOffGround = false
    stateData.followThrough = true

    local jumpSpeed = oldPounceAttack.jumpSpeed()
    stateData.jumpVector = util.aimVector(self.toTarget, jumpSpeed, 1.5, true)
    mcontroller.setVelocity(stateData.jumpVector)
  end

  if stateData.winddownTime > 0.0 then
    entity.setAnimationState("movement", "idle")
    entity.setAnimationState("attack", "idle")
    stateData.winddownTime = stateData.winddownTime - dt
    return stateData.winddownTime <= 0.0
  elseif stateData.followThrough then
    entity.setAnimationState("attack", "charge")

    -- --re-set the velocity until we've properly left the ground to avoid the initial falloff
    if not stateData.pounceWasOffGround then
      mcontroller.setVelocity(stateData.jumpVector)
    end

    -- If the monster is on the ground and was off the ground, the attack is over
    if mcontroller.onGround() then
      if stateData.pounceWasOffGround then
        stateData.winddownTime = entity.configParameter("oldPounceAttack.winddownTime")
      end
    else
      stateData.pounceWasOffGround = true
    end
  end

  return false
end

function oldPounceAttack.leavingState(stateData)
end
