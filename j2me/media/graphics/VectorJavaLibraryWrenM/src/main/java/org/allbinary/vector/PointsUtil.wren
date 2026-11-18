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
// package org.allbinary.vector

import "../../../allbinary_java" for JObject, JException, JR

class PointsUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PointsUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PointsUtil() {
  }

  construct new() {
    super()
    initFields_PointsUtil()
  }
    

    static getInstance() {
        return PointsUtil.instance
    }
    

    adjustXY(points, x, y) {
        var size = points.count
        var newPoints = JR.listOf(size, Fn.new { JR.listOf(0, Fn.new { List.filled(0, 0) }) })
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var size2 = points[index].count
            newPoints[index] = JR.listOf(size2, Fn.new { List.filled(2, 0) })
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size2))) break
                if ((points[index][index2][0] != 1000)) {
                    newPoints[index][index2][0] = (points[index][index2][0] + x)
                    newPoints[index][index2][1] = (points[index][index2][1] + y)
                } else {
                    newPoints[index][index2][0] = 1000
                    newPoints[index][index2][1] = 1000
                }
                }
            }
            }
        }
        return newPoints
    }
    

    adjust(points, both) {
        return this.adjust(points, both, both)
    }
    

    adjust(points, x, y) {
        var newPoints = JR.listOf(points.count, Fn.new { List.filled(2, 0) })
        if (true) {
            var index2 = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index2 = JR.i32(index2 + 1)
                }
                jfirst = false
                if (!((index2 < points.count))) break
            if ((points[index2][0] != 1000)) {
                newPoints[index2][0] = (points[index2][0] + x)
                newPoints[index2][1] = (points[index2][1] + y)
            } else {
                newPoints[index2][0] = 1000
                newPoints[index2][1] = 1000
            }
            }
        }
        return newPoints
    }
}


