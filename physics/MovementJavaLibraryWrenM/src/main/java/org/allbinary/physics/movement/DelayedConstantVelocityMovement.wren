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

class DelayedConstantVelocityMovement is BasicConstantVelocityMovement {
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }

  initFields_DelayedConstantVelocityMovement() {
    _timeDelayHelper = null
        _timeDelayHelper = TimeDelayHelper.new(60)
  }
    

    construct new(basicDecimal, velocityProperties) {
        super(basicDecimal, velocityProperties)
        initFields_DelayedConstantVelocityMovement()
    }
    

    init(speedBasicDecimal, angle, otherAngle) {
    }
    

    process(layer) {
        if (_timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.process(layer)
        }
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper

