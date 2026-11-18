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
import "./Movement" for Movement

class NoZBasicConstantVelocityMovement is Movement {
  velocityProperties { _velocityProperties }
  velocityProperties=(value) { _velocityProperties = value }
  speedBasicDecimal { _speedBasicDecimal }
  speedBasicDecimal=(value) { _speedBasicDecimal = value }
  axisMathVectorUtil { _axisMathVectorUtil }
  axisMathVectorUtil=(value) { _axisMathVectorUtil = value }

  initFields_NoZBasicConstantVelocityMovement() {
    _velocityProperties = null
    _speedBasicDecimal = null
    _axisMathVectorUtil = null
        
        _speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
        _axisMathVectorUtil = AxisMathVectorUtil.getInstance()
  }
    

    construct new(basicDecimal, velocityProperties) {
    super()
    initFields_NoZBasicConstantVelocityMovement()
        this.setSpeedBasicDecimal(basicDecimal)
        _velocityProperties = velocityProperties
    }
    

    init(speedBasicDecimal, angle, otherAngle) {
        _speedBasicDecimal = speedBasicDecimal
        var angleFactory = AngleFactory.getInstance()
        _velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    }
    

    moveOutsideRadius(layer, radius, angle, otherAngle) {
        var scaleFactorValue = _speedBasicDecimal.getScaledFactorValue()
        var xVector = JR.i32(((_axisMathVectorUtil.calculateX(radius, angle) / scaleFactorValue)))
        var yVector = JR.i32(((_axisMathVectorUtil.calculateY(radius, angle) / scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, 0)
    }
    

    process(layer) {
        layer.moveDXYZ(_velocityProperties.getVelocityXBasicDecimalP().getScaled(), _velocityProperties.getVelocityYBasicDecimalP().getScaled(), 0)
    }
    

    toString() {
        return _velocityProperties.toString()
    }
    

    stop() {
        _velocityProperties.zero()
    }
    

    getVelocityProperties() {
        return _velocityProperties
    }
    

    setVelocityProperties(velocityProperties) {
        _velocityProperties = velocityProperties
    }
    

    setSpeedBasicDecimal(speedBasicDecimal) {
        _speedBasicDecimal = speedBasicDecimal
    }
    

    getSpeedBasicDecimal() {
        return _speedBasicDecimal
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil" for AxisMathVectorUtil
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory

