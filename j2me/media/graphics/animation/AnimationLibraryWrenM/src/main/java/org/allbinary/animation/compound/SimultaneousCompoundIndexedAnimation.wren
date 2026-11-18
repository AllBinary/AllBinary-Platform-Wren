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

class SimultaneousCompoundIndexedAnimation is IndexedAnimation {
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }

  initFields_SimultaneousCompoundIndexedAnimation() {
    _animationInterfaceArray = null
        
  }
    

    construct new(animationInterfaceArray, animationBehavior) {
        super(animationBehavior)
        initFields_SimultaneousCompoundIndexedAnimation()
        _animationInterfaceArray = animationInterfaceArray
    }
    

    setFrame(frameIndex) {
        var indexedAnimation = null
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            indexedAnimation = _animationInterfaceArray[index]
            indexedAnimation.setFrame(frameIndex)
            }
        }
    }
    

    getFrame() {
        var indexedAnimation = _animationInterfaceArray[0]
        return indexedAnimation.getFrame()
    }
    

    getSize() {
        var indexedAnimation = _animationInterfaceArray[0]
        return indexedAnimation.getSize()
    }
    

    previousFrame() {
        var indexedAnimation = null
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            indexedAnimation = _animationInterfaceArray[index]
            indexedAnimation.previousFrame()
            }
        }
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    nextFrame() {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].nextFrame()
            }
        }
    }
    

    paintXY(graphics, x, y) {
        var size = _animationInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _animationInterfaceArray[index].paintXY(graphics, x, y)
            }
        }
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        var size = _animationInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)
            }
        }
    }
    

    getAnimationInterfaceArray() {
        return _animationInterfaceArray
    }
    

    setAnimationInterfaceArray(animationInterfaceArray) {
        _animationInterfaceArray = animationInterfaceArray
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil

