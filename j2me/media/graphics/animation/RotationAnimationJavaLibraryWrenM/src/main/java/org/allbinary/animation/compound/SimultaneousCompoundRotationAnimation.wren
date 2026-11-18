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

class SimultaneousCompoundRotationAnimation is RotationAnimation {
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }

  initFields_SimultaneousCompoundRotationAnimation() {
    _animationInterfaceArray = null
        
  }
    

    construct new(animationInterfaceArray, animationBehavior) {
        super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        initFields_SimultaneousCompoundRotationAnimation()
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
    

    previousRotation() {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].previousRotation()
            }
        }
    }
    

    nextRotation() {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].nextRotation()
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
    

    setFrameByDirection(direction) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].setFrameByDirection(direction)
            }
        }
    }
    

    setFrameToAngle(angle) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].setFrameToAngle(angle)
            }
        }
    }
    

    adjustFrameToAngle(newAngle) {
        this.adjustFrame(newAngle.getValue())
    }
    

    adjustFrame(angle) {
        if (true) {
            var index = _animationInterfaceArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterfaceArray[index].adjustFrame(angle)
            }
        }
    }
    

    getAngleInfoP() {
        return _animationInterfaceArray[0].getAngleInfoP()
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
import "../../../../org/allbinary/direction/Direction" for Direction
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/math/Angle" for Angle
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil

