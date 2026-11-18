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

class VectorAnimation is IndexedAnimation {
  currentPoints { _currentPoints }
  currentPoints=(value) { _currentPoints = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }

  initFields_VectorAnimation() {
    _currentPoints = null
    _circularIndexUtil = null
        _currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        _circularIndexUtil = CircularIndexUtil.createInstance(0)
  }
    

    static createVectorAnimation(currentPoints2, basicColor, animationBehavior) {
        var currentPoints = JR.listOf(1, Fn.new { JR.listOf(currentPoints2.count, Fn.new { List.filled(2, 0) }) })
        var size = currentPoints2.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            currentPoints[0][index][0] = currentPoints2[index][0]
            currentPoints[0][index][1] = currentPoints2[index][1]
            }
        }
        return VectorAnimation.new(currentPoints, basicColor, animationBehavior)
    }
    

    construct new(currentPoints, basicColor, animationBehavior) {
        super(animationBehavior)
        initFields_VectorAnimation()
        this.setPoints(currentPoints)
        this.setBasicColorP(basicColor)
    }
    

    setBasicColorP(basicColor) {
        var changed = false
        if (((this.getBasicColorP() == null) || (this.getBasicColorP().intValue() != basicColor.intValue()))) {
            changed = true
        }
        super.setBasicColorP(basicColor)
        if (changed) {
            this.updateModifiers()
        }
    }
    

    changeBasicColor(basicColor) {
        var changed = false
        if (((this.getChangeBasicColor() == null) || (this.getChangeBasicColor().intValue() != basicColor.intValue()))) {
            changed = true
        }
        super.changeBasicColor(basicColor)
        if (changed) {
            this.updateModifiers()
        }
    }
    

    setAlpha(alpha) {
        var changed = false
        if ((this.alphaP != alpha)) {
            changed = true
        }
        super.setAlpha(alpha)
        if (changed) {
            this.updateModifiers()
        }
    }
    

    setScale(scaleX, scaleY) {
    }
    

    setMaxScale(maxScaleX, maxScaleY) {
    }
    

    updateModifiers() {
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    getSize() {
        return _currentPoints.count
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    nextFrame() {
        _circularIndexUtil.next()
    }
    

    previousFrame() {
        _circularIndexUtil.previous()
    }
    

    paintVectors(graphics, x, y) {
        var jerror0 = Fiber.new {
            var nextPointX = 0
            var nextPointY = 0
            var nextPoint = null
            var point = null
            var currentPointsFrame = _currentPoints[_circularIndexUtil.getIndex()]
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
    

    paintXY(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor)
        this.paintVectors(graphics, x, y)
    }
    

    getFrame() {
        return _circularIndexUtil.getIndex()
    }
    

    setFrame(index) {
        _circularIndexUtil.setIndex(index)
    }
    

    getPoints(frame) {
        return _currentPoints[frame]
    }
    

    setPoints(currentPoints) {
        _currentPoints = currentPoints
        _circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.count)
    }
    

    getBasicColorP() {
        return super.getBasicColorP()
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./VectorAnimationInterface" for VectorAnimationInterface
import "./AnimationBehavior" for AnimationBehavior

