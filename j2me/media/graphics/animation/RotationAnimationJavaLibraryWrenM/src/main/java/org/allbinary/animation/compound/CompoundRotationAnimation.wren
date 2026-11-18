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
// package org.allbinary.animation.compound

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/RotationAnimation" for RotationAnimation

class CompoundRotationAnimation is RotationAnimation {
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }

  initFields_CompoundRotationAnimation() {
    _animationInterfaceArray = null
        
  }
    

    construct new(animationInterfaceArray, animationBehavior) {
        super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        initFields_CompoundRotationAnimation()
        _animationInterfaceArray = animationInterfaceArray
        this.circularIndexUtil = CircularIndexUtil.createInstance(_animationInterfaceArray.count)
    }
    

    setFrame(index) {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrame(index)
    }
    

    getFrame() {
        return _animationInterfaceArray[this.circularIndexUtil.getIndex()].getFrame()
    }
    

    getAnimationSize() {
        return _animationInterfaceArray[this.circularIndexUtil.getIndex()].getAnimationSize()
    }
    

    getSize() {
        return _animationInterfaceArray[this.circularIndexUtil.getIndex()].getSize()
    }
    

    previousFrame() {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].previousFrame()
    }
    

    nextFrame() {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame()
    }
    

    previousRotation() {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].previousRotation()
    }
    

    nextRotation() {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].nextRotation()
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    paintXY(graphics, x, y) {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y)
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)
    }
    

    getCurrentAnimation() {
        return _animationInterfaceArray[this.circularIndexUtil.getIndex()]
    }
    

    nextAnimation() {
        var frame = this.getFrame()
        this.circularIndexUtil.next()
        this.setFrame(frame)
    }
    

    previousAnimation() {
        var frame = this.getFrame()
        this.circularIndexUtil.previous()
        this.setFrame(frame)
    }
    

    setAnimation(index) {
        var frame = this.getFrame()
        this.circularIndexUtil.setIndex(index)
        this.setFrame(frame)
    }
    

    setFrameByDirection(direction) {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameByDirection(direction)
    }
    

    setFrameToAngle(angle) {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameToAngle(angle)
    }
    

    adjustFrameToAngle(newAngle) {
        this.adjustFrame(newAngle.getValue())
    }
    

    adjustFrame(angle) {
        _animationInterfaceArray[this.circularIndexUtil.getIndex()].adjustFrame(angle)
    }
    

    getAngleInfoP() {
        return _animationInterfaceArray[this.circularIndexUtil.getIndex()].getAngleInfoP()
    }
    

    getAnimationInterfaceArray() {
        return _animationInterfaceArray
    }
    

    setAnimationInterfaceArray(animationInterfaceArray) {
        _animationInterfaceArray = animationInterfaceArray
    }
    

    set(gl) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].set(gl)
            }
        }
    }
}

import "../../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../org/allbinary/direction/Direction" for Direction
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/math/Angle" for Angle
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./CompoundAnimationInterface" for CompoundAnimationInterface

