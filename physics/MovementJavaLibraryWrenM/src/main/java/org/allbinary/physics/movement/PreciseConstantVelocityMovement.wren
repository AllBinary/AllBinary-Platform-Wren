// Generated Code Do Not Modify
// package org.allbinary.physics.movement

import "../../../../allbinary_java" for JObject, JException, JR
import "./BasicConstantVelocityMovement" for BasicConstantVelocityMovement

class PreciseConstantVelocityMovement is BasicConstantVelocityMovement {
  accumulatedX { _accumulatedX }
  accumulatedX=(value) { _accumulatedX = value }
  accumulatedY { _accumulatedY }
  accumulatedY=(value) { _accumulatedY = value }
  accumulatedZ { _accumulatedZ }
  accumulatedZ=(value) { _accumulatedZ = value }
  factorValue { _factorValue }
  factorValue=(value) { _factorValue = value }

  initFields_PreciseConstantVelocityMovement() {
    _accumulatedX = 0
    _accumulatedY = 0
    _accumulatedZ = 0
    _factorValue = 0
        _accumulatedX = 0
        _accumulatedY = 0
        _accumulatedZ = 0
        _factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
  }
    

    construct new(basicDecimal, velocityProperties) {
        super(basicDecimal, velocityProperties)
        initFields_PreciseConstantVelocityMovement()
    }
    

    init(speedBasicDecimal, angle, otherAngle) {
    }
    

    process(layer) {
        var mathUtil = MathUtil.getInstance()
        var velocityProperties = this.getVelocityProperties()
        _accumulatedX = JR.i32(((_accumulatedX + velocityProperties.getVelocityXBasicDecimalP().getUnscaled())))
        _accumulatedY = JR.i32(((_accumulatedY + velocityProperties.getVelocityYBasicDecimalP().getUnscaled())))
        _accumulatedZ = JR.i32(((_accumulatedZ + velocityProperties.getVelocityZBasicDecimalP().getUnscaled())))
        layer.moveDXYZ(JR.idiv(_accumulatedX, _factorValue), JR.idiv(_accumulatedY, _factorValue), JR.idiv(_accumulatedZ, _factorValue))
        if ((mathUtil.abs(_accumulatedX) > _factorValue)) {
            _accumulatedX = 0
        }
        if ((mathUtil.abs(_accumulatedY) > _factorValue)) {
            _accumulatedY = 0
        }
        if ((mathUtil.abs(_accumulatedZ) > _factorValue)) {
            _accumulatedZ = 0
        }
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../../org/allbinary/logic/math/ScaleFactorFactory" for ScaleFactorFactory

