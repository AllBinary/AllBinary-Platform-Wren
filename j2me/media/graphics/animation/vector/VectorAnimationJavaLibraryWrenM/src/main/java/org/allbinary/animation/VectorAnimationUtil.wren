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

class VectorAnimationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = VectorAnimationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_VectorAnimationUtil() {
  }
    

    static getInstance() {
        return VectorAnimationUtil.instance
    }
    

    construct new() {
    super()
    initFields_VectorAnimationUtil()
    }
    

    toAnimationArrayFromListOfPointListWithPointsPerFrame(vector, pointsPerFrame) {
        var size = vector.size()
        var points = JR.listOf(size, Fn.new { JR.listOf(pointsPerFrame, Fn.new { List.filled(2, 0) }) })
        var nextBasicArrayList = null
        var framePoints = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            nextBasicArrayList = vector.objectArray[index]
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            if (true) {
                var pointIndex = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        pointIndex = JR.i32(pointIndex + 1)
                    }
                    jfirst = false
                    if (!((pointIndex < framePoints.count))) break
                points[index][pointIndex][0] = framePoints[pointIndex][0]
                points[index][pointIndex][1] = framePoints[pointIndex][1]
                }
            }
            }
        }
        return points
    }
    

    toAnimationArrayFromListOfPointList(vector) {
        var size = vector.size()
        var points = JR.listOf(size, Fn.new { JR.listOf(0, Fn.new { List.filled(0, 0) }) })
        var nextBasicArrayList = null
        var framePoints = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            nextBasicArrayList = vector.objectArray[index]
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            points[index] = JR.listOf(framePoints.count, Fn.new { List.filled(2, 0) })
            if (true) {
                var pointIndex = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        pointIndex = JR.i32(pointIndex + 1)
                    }
                    jfirst = false
                    if (!((pointIndex < framePoints.count))) break
                points[index][pointIndex][0] = framePoints[pointIndex][0]
                points[index][pointIndex][1] = framePoints[pointIndex][1]
                }
            }
            }
        }
        return points
    }
    

    toFrameArrayFromPointBasicArrayList(list) {
        var points = JR.listOf(list.size(), Fn.new { List.filled(2, 0) })
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var nextPoint = list.objectArray[index]
            points[index][0] = nextPoint.getX()
            points[index][1] = nextPoint.getY()
            }
        }
        return points
    }
}

import "../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList

