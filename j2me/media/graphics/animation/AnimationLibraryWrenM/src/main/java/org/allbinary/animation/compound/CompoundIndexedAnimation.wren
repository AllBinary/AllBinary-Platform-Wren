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
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class CompoundIndexedAnimation is IndexedAnimation {
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }

  initFields_CompoundIndexedAnimation() {
    _circularIndexUtil = null
    _animationInterfaceArray = null
        
        
  }
    

    construct new(animationInterfaceArray, animationBehavior) {
        super(animationBehavior)
        initFields_CompoundIndexedAnimation()
        _animationInterfaceArray = animationInterfaceArray
        _circularIndexUtil = CircularIndexUtil.createInstance(_animationInterfaceArray.count)
    }
    

    setFrame(index) {
        var indexedAnimation = _animationInterfaceArray[_circularIndexUtil.getIndex()]
        indexedAnimation.setFrame(index)
    }
    

    getFrame() {
        var indexedAnimation = _animationInterfaceArray[_circularIndexUtil.getIndex()]
        return indexedAnimation.getFrame()
    }
    

    getSize() {
        var indexedAnimation = _animationInterfaceArray[_circularIndexUtil.getIndex()]
        return indexedAnimation.getSize()
    }
    

    previousFrame() {
        var indexedAnimation = _animationInterfaceArray[_circularIndexUtil.getIndex()]
        indexedAnimation.previousFrame()
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    nextFrame() {
        _animationInterfaceArray[_circularIndexUtil.getIndex()].nextFrame()
    }
    

    paintXY(graphics, x, y) {
        _animationInterfaceArray[_circularIndexUtil.getIndex()].paintXY(graphics, x, y)
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        _animationInterfaceArray[_circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z)
    }
    

    getCurrentAnimation() {
        return _animationInterfaceArray[_circularIndexUtil.getIndex()]
    }
    

    nextAnimation() {
        var frame = this.getFrame()
        _circularIndexUtil.next()
        this.setFrame(frame)
    }
    

    previousAnimation() {
        var frame = this.getFrame()
        _circularIndexUtil.previous()
        this.setFrame(frame)
    }
    

    setAnimation(index) {
        var frame = this.getFrame()
        _circularIndexUtil.setIndex(index)
        this.setFrame(frame)
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
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./CompoundAnimationInterface" for CompoundAnimationInterface

