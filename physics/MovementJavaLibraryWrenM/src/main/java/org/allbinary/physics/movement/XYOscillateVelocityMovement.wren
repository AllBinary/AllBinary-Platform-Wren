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

class XYOscillateVelocityMovement is BasicConstantVelocityMovement {
  oscillateMin { _oscillateMin }
  oscillateMin=(value) { _oscillateMin = value }
  oscillateMax { _oscillateMax }
  oscillateMax=(value) { _oscillateMax = value }
  oscillate { _oscillate }
  oscillate=(value) { _oscillate = value }
  oscillatePositive { _oscillatePositive }
  oscillatePositive=(value) { _oscillatePositive = value }

  initFields_XYOscillateVelocityMovement() {
    _oscillateMin = 0
    _oscillateMax = 0
    _oscillate = 0
    _oscillatePositive = false
        
        
        _oscillate = 0
        _oscillatePositive = false
  }
    

    construct new(speedBasicDecimal, oscillateMin, oscillateMax) {
        super(speedBasicDecimal, VelocityProperties.new(JR.i32(speedBasicDecimal.getUnscaled()), JR.i32(speedBasicDecimal.getUnscaled())))
        initFields_XYOscillateVelocityMovement()
        _oscillateMin = oscillateMin
        _oscillateMax = oscillateMax
    }
    

    process(layer) {
        super.process(layer)
        if ((_oscillate < _oscillateMin)) {
            _oscillatePositive = true
            this.getVelocityProperties().getVelocityYBasicDecimalP().addint(3000)
        } else if ((_oscillate > _oscillateMax)) {
            _oscillatePositive = false
            this.getVelocityProperties().getVelocityYBasicDecimalP().subtractint(3000)
        }
        if (_oscillatePositive) {
            _oscillate = JR.i32(_oscillate + 1)
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(5000)
        } else {
            _oscillate = JR.i32(_oscillate - 1)
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(5000)
        }
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/game/physics/velocity/VelocityProperties" for VelocityProperties
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal

