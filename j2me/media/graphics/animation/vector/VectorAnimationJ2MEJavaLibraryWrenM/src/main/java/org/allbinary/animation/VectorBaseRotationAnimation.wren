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
import "./RotationAnimation" for RotationAnimation

class VectorBaseRotationAnimation is RotationAnimation {
  currentPoints { _currentPoints }
  currentPoints=(value) { _currentPoints = value }

  initFields_VectorBaseRotationAnimation() {
    _currentPoints = null
        _currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
  }
    

    construct new(angleInfo, currentPoints, basicColor, animationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance((360 / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        initFields_VectorBaseRotationAnimation()
        this.setPoints(currentPoints)
        this.setBasicColorP(basicColor)
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    getFrame() {
        return this.circularIndexUtil.getIndex()
    }
    

    setFrame(index) {
        this.circularIndexUtil.setIndex(index)
    }
    

    nextFrame() {
        this.circularIndexUtil.next()
    }
    

    previousFrame() {
        this.circularIndexUtil.previous()
    }
    

    getSize() {
        return _currentPoints.count
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    paintXY(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor)
        var jerror0 = Fiber.new {
            var nextPointX = 0
            var nextPointY = 0
            var nextPoint = null
            var point = null
            var currentPointsFrame = _currentPoints[this.circularIndexUtil.getIndex()]
            var size = currentPointsFrame.count
            var index = JR.i32(size - 2)
            while ((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0)) {
                nextPoint = currentPointsFrame[index]
                point = currentPointsFrame[JR.i32(index + 1)]
                nextPointX = nextPoint[0]
                nextPointY = nextPoint[1]
                if ((nextPointX != 1000)) {
                    graphics.drawLine(JR.i32(point[0] + x), JR.i32(point[1] + y), JR.i32(nextPointX + x), JR.i32(nextPointY + y))
                } else {
                    index = JR.i32(index - 1)
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "paintVectors", e)
        }
    }
    

    getPoints(frame) {
        return _currentPoints[frame]
    }
    

    setPoints(currentPoints) {
        _currentPoints = currentPoints
        this.circularIndexUtil = CircularIndexUtil.createInstance(_currentPoints.count)
    }
    

    getBasicColorP() {
        return super.getBasicColorP()
    }
    

    setBasicColorP(basicColor) {
        super.setBasicColorP(basicColor)
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./VectorAnimationInterface" for VectorAnimationInterface
import "./AnimationBehavior" for AnimationBehavior

