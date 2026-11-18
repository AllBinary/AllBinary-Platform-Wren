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
// package org.allbinary.graphics.pipeline

import "../../../../allbinary_java" for JObject, JException, JR

class BasicGraphicsPipeline is JObject {
  pointBasicArrayList { _pointBasicArrayList }
  pointBasicArrayList=(value) { _pointBasicArrayList = value }
  noDecimalTrigTable { _noDecimalTrigTable }
  noDecimalTrigTable=(value) { _noDecimalTrigTable = value }

  initFields_BasicGraphicsPipeline() {
    _pointBasicArrayList = null
    _noDecimalTrigTable = null
        
        _noDecimalTrigTable = NoDecimalTrigTable.getInstance()
  }
    

    construct new(points) {
    super()
    initFields_BasicGraphicsPipeline()
        _pointBasicArrayList = points
    }
    

    setInitMatrix(points) {
        _pointBasicArrayList = points
    }
    

    createMatrix() {
    }
    

    translate(x, y) {
        var newBasicArrayList = BasicArrayListD.new()
        var size = _pointBasicArrayList.size()
        var pointFactory = PointFactory.getInstance()
        var secondPoint = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            secondPoint = _pointBasicArrayList.objectArray[index]
            if ((secondPoint.getX() != 1000)) {
                newBasicArrayList.add(pointFactory.createXY((secondPoint.getX() + x), (secondPoint.getY() + y)))
            } else {
                newBasicArrayList.add(secondPoint)
            }
            }
        }
        _pointBasicArrayList = newBasicArrayList
    }
    

    rotateToAngle(angle) {
        this.rotate(JR.i32(angle.getValue()))
    }
    

    rotate(angle) {
        var newBasicArrayList = BasicArrayListD.new()
        var secondPoint = null
        var y = 0
        var secondX = 0
        var secondY = 0
        var point = null
        var pointFactory = PointFactory.getInstance()
        var size = _pointBasicArrayList.size()
        var sin = 0
        var cos = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            secondPoint = _pointBasicArrayList.objectArray[index]
            if ((secondPoint.getX() != 1000)) {
                sin = _noDecimalTrigTable.sin(angle)
                cos = _noDecimalTrigTable.cos(angle)
                y = (secondPoint.getY() * sin)
                secondX = (((secondPoint.getX() * cos)) - y)
                secondY = (((secondPoint.getX() * sin)) + ((secondPoint.getY() * cos)))
                point = pointFactory.createXY(JR.idiv(JR.i32(secondX), 10000), JR.idiv(JR.i32(secondY), 10000))
                newBasicArrayList.add(point)
            } else {
                newBasicArrayList.add(secondPoint)
            }
            }
        }
        _pointBasicArrayList = newBasicArrayList
    }
    

    mirror(width) {
        var pointFactory = PointFactory.getInstance()
        var halfWidth = (JR.shr(width, 1))
        var newBasicArrayList = BasicArrayListD.new()
        var secondPoint = null
        var newX = 0
        var point = null
        var size = _pointBasicArrayList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            secondPoint = _pointBasicArrayList.objectArray[index]
            if ((secondPoint.getX() != 1000)) {
                newX = 0
                if ((secondPoint.getX() > halfWidth)) {
                    newX = (halfWidth - ((secondPoint.getX() - halfWidth)))
                } else {
                    newX = (halfWidth + ((halfWidth - secondPoint.getX())))
                }
                point = pointFactory.createXY(newX, secondPoint.getY())
                newBasicArrayList.add(point)
            } else {
                newBasicArrayList.add(secondPoint)
            }
            }
        }
        _pointBasicArrayList = newBasicArrayList
    }
    

    getMatrix() {
        return _pointBasicArrayList
    }
}

import "../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../org/allbinary/math/Angle" for Angle
import "../../../../org/allbinary/math/NoDecimalTrigTable" for NoDecimalTrigTable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

