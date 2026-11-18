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

class VectorRotationGenerator is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = VectorRotationGenerator.new()
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
  angleFactory { _angleFactory }
  angleFactory=(value) { _angleFactory = value }

  initFields_VectorRotationGenerator() {
    _logUtil = null
    _vectorAnimationUtil = null
    _angleFactory = null
        _logUtil = LogUtil.getInstance()
        _vectorAnimationUtil = VectorAnimationUtil.getInstance()
        _angleFactory = AngleFactory.getInstance()
  }
    

    static getInstance() {
        return VectorRotationGenerator.instance
    }
    

    construct new() {
    super()
    initFields_VectorRotationGenerator()
    }
    

    getInstance(vectorRotationInfo) {
        return this.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames())
    }
    

    getInstanceFrames(width, height, points, frames) {
        var jerror0 = Fiber.new {
            var totalAngle = _angleFactory.TOTAL_ANGLE
            var angleIncrement = JR.idiv(JR.i32(totalAngle), frames)
            var pointsBasicArrayList = BasicArrayListS.new(JR.idiv(JR.i32(totalAngle), angleIncrement))
            var pointBasicArrayList = BasicArrayListS.new(points.count)
            var pointFactory = PointFactory.getInstance()
            var size = points.count
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                pointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
                }
            }
            var index = 0
            while ((index < JR.i32(totalAngle))) {
                pointsBasicArrayList.add(this.getListAtAngle(width, height, pointBasicArrayList, _angleFactory.getAt(index)))
                index = JR.i32(index + angleIncrement)
            }
            var newPoints = _vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size())
            return newPoints
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        }
    }
    

    getListAtAngle(width, height, pointBasicArrayList, angle) {
        var graphicsPipe = BasicGraphicsPipeline.new(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(-(JR.shr(width, 1)), -(JR.shr(height, 1)))
        graphicsPipe.rotateToAngle(angle)
        graphicsPipe.translate((JR.shr(width, 1)), (JR.shr(height, 1)))
        return graphicsPipe.getMatrix()
    }
}

import "../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../org/allbinary/graphics/pipeline/BasicGraphicsPipeline" for BasicGraphicsPipeline
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/math/Angle" for Angle
import "../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListS" for BasicArrayListS
import "../../../org/allbinary/vector/VectorInfo" for VectorInfo
import "./VectorAnimationUtil" for VectorAnimationUtil

