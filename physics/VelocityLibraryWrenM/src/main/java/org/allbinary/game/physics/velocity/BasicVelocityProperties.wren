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
// package org.allbinary.game.physics.velocity

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicVelocityProperties is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  velocityXBasicDecimal { _velocityXBasicDecimal }
  velocityXBasicDecimal=(value) { _velocityXBasicDecimal = value }
  velocityYBasicDecimal { _velocityYBasicDecimal }
  velocityYBasicDecimal=(value) { _velocityYBasicDecimal = value }
  velocityZBasicDecimal { _velocityZBasicDecimal }
  velocityZBasicDecimal=(value) { _velocityZBasicDecimal = value }
  axisMathVectorUtil { _axisMathVectorUtil }
  axisMathVectorUtil=(value) { _axisMathVectorUtil = value }
  directionUtil { _directionUtil }
  directionUtil=(value) { _directionUtil = value }

  initFields_BasicVelocityProperties() {
    _logUtil = null
    _velocityXBasicDecimal = null
    _velocityYBasicDecimal = null
    _velocityZBasicDecimal = null
    _axisMathVectorUtil = null
    _directionUtil = null
        _logUtil = LogUtil.getInstance()
        
        
        
        _axisMathVectorUtil = AxisMathVectorUtil.getInstance()
        _directionUtil = DirectionUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_BasicVelocityProperties()
        _velocityXBasicDecimal = BasicDecimal.new(0)
        _velocityYBasicDecimal = BasicDecimal.new(0)
        _velocityZBasicDecimal = BasicDecimal.new(0)
    }
    

    zero() {
        _velocityXBasicDecimal.setint(0)
        _velocityYBasicDecimal.setint(0)
        _velocityZBasicDecimal.setint(0)
    }
    

    getVelocityXBasicDecimalP() {
        return _velocityXBasicDecimal
    }
    

    getVelocityYBasicDecimalP() {
        return _velocityYBasicDecimal
    }
    

    getVelocityZBasicDecimalP() {
        return _velocityZBasicDecimal
    }
    

    setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection) {
        var angle = _directionUtil.getAngle(direction)
        var otherAngle = _directionUtil.getAngle(otherDirection)
        this.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    }
    

    setVelocityWithDirection(magnitude, direction, otherDirection) {
        var angle = _directionUtil.getAngle(direction)
        var otherAngle = _directionUtil.getAngle(otherDirection)
        this.setVelocity(magnitude, angle, otherAngle)
    }
    

    addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection) {
        var angle = _directionUtil.getAngle(direction)
        var otherAngle = _directionUtil.getAngle(otherDirection)
        this.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    }
    

    addVelocityWithDirection(magnitude, direction, otherDirection) {
        var angle = _directionUtil.getAngle(direction)
        var otherAngle = _directionUtil.getAngle(otherDirection)
        this.addVelocity(magnitude, angle, otherAngle)
    }
    

    setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle) {
        var magnitude = magnitudeBasicDecimal.getUnscaled()
        this.setVelocity(magnitude, angle, otherAngle)
    }
    

    addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle) {
        var magnitude = magnitudeBasicDecimal.getUnscaled()
        this.addVelocity(magnitude, angle, otherAngle)
    }
    

    setVelocity(magnitude, angle, otherAngle) {
        this.setVelocityi(magnitude, JR.i32(angle.getValue()), JR.i32(otherAngle.getValue()))
    }
    

    addVelocity(magnitude, angle, otherAngle) {
        this.addVelocityi(magnitude, JR.i32(angle.getValue()), JR.i32(otherAngle.getValue()))
    }
    

    setVelocityi(magnitude, angle, otherAngle) {
        var xVector = ((_axisMathVectorUtil.calculateX(magnitude, angle) / _velocityXBasicDecimal.getScaledFactorValue()))
        var yVector = ((_axisMathVectorUtil.calculateY(magnitude, angle) / _velocityYBasicDecimal.getScaledFactorValue()))
        var zVector = ((_axisMathVectorUtil.calculateZ(magnitude, otherAngle) / _velocityZBasicDecimal.getScaledFactorValue()))
        _velocityXBasicDecimal.setlong(xVector)
        _velocityYBasicDecimal.setlong(yVector)
        _velocityZBasicDecimal.setlong(zVector)
    }
    

    addVelocityi(magnitude, angle, otherAngle) {
        var xVector = ((_axisMathVectorUtil.calculateX(magnitude, angle) / _velocityXBasicDecimal.getScaledFactorValue()))
        var yVector = ((_axisMathVectorUtil.calculateY(magnitude, angle) / _velocityYBasicDecimal.getScaledFactorValue()))
        var zVector = ((_axisMathVectorUtil.calculateZ(magnitude, otherAngle) / _velocityZBasicDecimal.getScaledFactorValue()))
        _velocityXBasicDecimal.addlong(xVector)
        _velocityYBasicDecimal.addlong(yVector)
        _velocityZBasicDecimal.addlong(zVector)
    }
    

    toString() {
        var commonSeps = CommonSeps.getInstance()
        var positionStrings = PositionStrings.getInstance()
        var stringBuffer = StringMaker.new()
        var stringUtil = StringUtil.getInstance()
        stringBuffer.append("Velocity ")
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(stringUtil.toString(_velocityXBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(stringUtil.toString(_velocityYBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(stringUtil.toString(_velocityZBasicDecimal))
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/direction/Direction" for Direction
import "../../../../../org/allbinary/direction/DirectionUtil" for DirectionUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil" for AxisMathVectorUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/math/Angle" for Angle
import "../../../../../org/allbinary/math/PositionStrings" for PositionStrings
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./BasicVelocityInterface" for BasicVelocityInterface

