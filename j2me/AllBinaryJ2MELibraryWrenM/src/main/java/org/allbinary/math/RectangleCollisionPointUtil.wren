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
// package org.allbinary.math

import "../../../allbinary_java" for JObject, JException, JR

class RectangleCollisionPointUtil is JObject {

  initFields_RectangleCollisionPointUtil() {
  }
    

    construct new() {
    super()
    initFields_RectangleCollisionPointUtil()
    }
    

    static allPointsInside(rectX1, rectY1, rectX2, rectY2, list) {
        var rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        var point = null
        if (true) {
            var index = list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            point = list.objectArray[index]
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())) {
                return false
            }
            }
        }
        return true
    }
    

    static allPointsInsideCell(rectX1, rectY1, rectX2, rectY2, list, xCellSize, yCellSize) {
        var rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        var point = null
        if (true) {
            var index = list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            point = list.objectArray[index]
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, (point.getX() * xCellSize), (point.getY() * yCellSize))) {
                return false
            }
            }
        }
        return true
    }
}

import "../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./RectangleCollisionUtil" for RectangleCollisionUtil

