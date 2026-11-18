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

class VectorMirrorGenerator is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = VectorMirrorGenerator.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  vectorAnimationUtil { _vectorAnimationUtil }
  vectorAnimationUtil=(value) { _vectorAnimationUtil = value }

  initFields_VectorMirrorGenerator() {
    _logUtil = null
    _vectorAnimationUtil = null
        _logUtil = LogUtil.getInstance()
        _vectorAnimationUtil = VectorAnimationUtil.getInstance()
  }
    

    static getInstance() {
        return VectorMirrorGenerator.instance
    }
    

    construct new() {
    super()
    initFields_VectorMirrorGenerator()
    }
    

    getInstance(jp1, jp2) {
    }

    getInstance_jo1(points, width) {
        var jerror0 = Fiber.new {
            var pointFactory = PointFactory.getInstance()
            var pointBasicArrayList = null
            var nextPoints = null
            var size2 = 0
            var size = points.count
            var pointsBasicArrayList = BasicArrayListS.new(size)
            if (true) {
                var frame = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        frame = JR.i32(frame + 1)
                    }
                    jfirst = false
                    if (!((frame < size))) break
                nextPoints = points[frame]
                size2 = nextPoints.count
                pointBasicArrayList = BasicArrayListS.new(size2)
                if (true) {
                    var index = 0
                    var jfirst = true
                    while (true) {
                        if (!jfirst) {
                            index = JR.i32(index + 1)
                        }
                        jfirst = false
                        if (!((index < size2))) break
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index][0], nextPoints[index][1]))
                    }
                }
                pointsBasicArrayList.add(pointBasicArrayList)
                }
            }
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < points.count))) break
                pointsBasicArrayList.add(this.getInstance(pointsBasicArrayList.objectArray[index], width))
                }
            }
            var newPoints = _vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList)
            return newPoints
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        }
    }
    

    getInstance_jo2(pointBasicArrayList, width) {
        var graphicsPipe = BasicGraphicsPipeline.new(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.mirror(width)
        return graphicsPipe.getMatrix()
    }
}

import "../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../org/allbinary/graphics/pipeline/BasicGraphicsPipeline" for BasicGraphicsPipeline
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListS" for BasicArrayListS
import "./VectorAnimationUtil" for VectorAnimationUtil

