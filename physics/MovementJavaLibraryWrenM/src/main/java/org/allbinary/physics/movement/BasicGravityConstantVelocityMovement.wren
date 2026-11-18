/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.physics.movement

import "../../../../allbinary_java" for JObject, JException, JR
import "./BasicConstantVelocityMovement" for BasicConstantVelocityMovement

class BasicGravityConstantVelocityMovement is BasicConstantVelocityMovement {
  gravityUtil { _gravityUtil }
  gravityUtil=(value) { _gravityUtil = value }

  initFields_BasicGravityConstantVelocityMovement() {
    _gravityUtil = null
        _gravityUtil = GravityUtil.getInstance()
  }
    

    construct new(speedBasicDecimal) {
        super(speedBasicDecimal, VelocityProperties.new(JR.i32(speedBasicDecimal.getUnscaled()), JR.i32(speedBasicDecimal.getUnscaled())))
        initFields_BasicGravityConstantVelocityMovement()
    }
    

    process(layer) {
        super.process(layer)
        _gravityUtil.process(this.getVelocityProperties(), _gravityUtil.GAME_GRAVITY_VELOCITY)
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/game/physics/acceleration/GravityUtil" for GravityUtil
import "../../../../org/allbinary/game/physics/velocity/VelocityProperties" for VelocityProperties
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal

