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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./IndexedAnimation" for IndexedAnimation

class RotationAnimation is IndexedAnimation {
  frameUtil { _frameUtil }
  frameUtil=(value) { _frameUtil = value }
  directionUtil { _directionUtil }
  directionUtil=(value) { _directionUtil = value }
  angleInfo { _angleInfo }
  angleInfo=(value) { _angleInfo = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }

  initFields_RotationAnimation() {
    _frameUtil = null
    _directionUtil = null
    _angleInfo = null
    _circularIndexUtil = null
        _frameUtil = FrameUtil.getInstance()
        _directionUtil = DirectionUtil.getInstance()
        
        
  }
    

    construct new(angleInfo, circularIndexUtil, animationBehavior) {
        super(animationBehavior)
        initFields_RotationAnimation()
        _angleInfo = angleInfo
        _circularIndexUtil = circularIndexUtil
    }
    

    nextRotationX() {
    }
    

    previousRotationX() {
    }
    

    nextRotation() {
        _angleInfo.adjustAngle(_circularIndexUtil.next())
    }
    

    previousRotation() {
        _angleInfo.adjustAngle(_circularIndexUtil.previous())
    }
    

    nextRotationZ() {
    }
    

    previousRotationZ() {
    }
    

    setFrame(index) {
        _circularIndexUtil.setIndex(index)
        var newFrame = _circularIndexUtil.getIndex()
        _angleInfo.adjustAngle(newFrame)
    }
    

    setFrameByDirection(direction) {
        var angle = _directionUtil.getFrameAngle(direction)
        this.adjustFrameToAngle(angle)
    }
    

    setFrameToAngle(angle) {
        this.adjustFrameToAngle(angle)
    }
    

    adjustFrameToAngle(angle) {
        this.adjustFrame(angle.getValue())
    }
    

    adjustFrame(angle) {
        this.setFrame(_frameUtil.getFrameForAngle(angle, JR.i32(_angleInfo.getAngleIncrementInfo().getAngleIncrement())))
    }
    

    getFrame() {
        return _circularIndexUtil.getIndex()
    }
    

    getSize() {
        return _circularIndexUtil.getSize()
    }
    

    getAngleInfoP() {
        return _angleInfo
    }
    

    toString() {
        return StringMaker.new().append(super.toString()).append("circularIndexUtil: ").append(_circularIndexUtil.toString()).append("angleInfo: ").append(_angleInfo.toString()).toString()
    }
}

import "../../../org/allbinary/direction/Direction" for Direction
import "../../../org/allbinary/direction/DirectionUtil" for DirectionUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/math/Angle" for Angle
import "../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../org/allbinary/math/FrameUtil" for FrameUtil
import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./RotationAnimationInterface" for RotationAnimationInterface
import "./AnimationBehavior" for AnimationBehavior

