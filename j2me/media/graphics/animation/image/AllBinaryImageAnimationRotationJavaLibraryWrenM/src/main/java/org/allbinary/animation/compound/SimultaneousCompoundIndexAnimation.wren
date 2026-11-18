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

class SimultaneousCompoundIndexAnimation is IndexedAnimation {
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }

  initFields_SimultaneousCompoundIndexAnimation() {
    _animationInterfaceArray = null
        
  }
    

    construct new(animationInterfaceArray, animationBehavior) {
        super(animationBehavior)
        initFields_SimultaneousCompoundIndexAnimation()
        _animationInterfaceArray = animationInterfaceArray
    }
    

    setFrame(frameIndex) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].setFrame(frameIndex)
            }
        }
    }
    

    getFrame() {
        return _animationInterfaceArray[0].getFrame()
    }
    

    getAnimationSize() {
        return _animationInterfaceArray[0].getAnimationSize()
    }
    

    getSize() {
        return _animationInterfaceArray[0].getSize()
    }
    

    previousFrame() {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].previousFrame()
            }
        }
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
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    paintXY(graphics, x, y) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].paintXY(graphics, x, y)
            }
        }
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z)
            }
        }
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
    

    getAnimationInterfaceArray() {
        return _animationInterfaceArray
    }
    

    setAnimationInterfaceArray(animationInterfaceArray) {
        _animationInterfaceArray = animationInterfaceArray
    }
}

import "../../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil

