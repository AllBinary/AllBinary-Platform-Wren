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

class ConstantVelocityNotifyViewChangeMovement is Movement {
  basicVelocityProperties { _basicVelocityProperties }
  basicVelocityProperties=(value) { _basicVelocityProperties = value }
  speedBasicDecimal { _speedBasicDecimal }
  speedBasicDecimal=(value) { _speedBasicDecimal = value }
  axisMathVectorUtil { _axisMathVectorUtil }
  axisMathVectorUtil=(value) { _axisMathVectorUtil = value }

  initFields_ConstantVelocityNotifyViewChangeMovement() {
    _basicVelocityProperties = null
    _speedBasicDecimal = null
    _axisMathVectorUtil = null
        
        
        _axisMathVectorUtil = AxisMathVectorUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_ConstantVelocityNotifyViewChangeMovement()
        _speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
        _basicVelocityProperties = BasicVelocityProperties.new()
    }
    

    init(speedBasicDecimal, angle, otherAngle) {
        _speedBasicDecimal = speedBasicDecimal
        var angleFactory = AngleFactory.getInstance()
        _basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    }
    

    moveOutsideRadius(layer, radius, angle, otherAngle) {
        var scaleFactorValue = _speedBasicDecimal.getScaledFactorValue()
        var xVector = JR.i32(((_axisMathVectorUtil.calculateX(radius, angle) / scaleFactorValue)))
        var yVector = JR.i32(((_axisMathVectorUtil.calculateY(radius, angle) / scaleFactorValue)))
        var zVector = JR.i32(((_axisMathVectorUtil.calculateZ(radius, otherAngle) / scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, zVector)
    }
    

    process(layer) {
        var x = _basicVelocityProperties.getVelocityXBasicDecimalP().getScaled()
        var y = _basicVelocityProperties.getVelocityYBasicDecimalP().getScaled()
        var z = _basicVelocityProperties.getVelocityZBasicDecimalP().getScaled()
        layer.moveDXYZ(x, y, z)
        if ((((x != 0) || (y != 0)) || (z != 0))) {
            layer.onViewPositionChangeEvent()
        }
    }
    

    stop() {
        _basicVelocityProperties.zero()
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil" for AxisMathVectorUtil
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory

