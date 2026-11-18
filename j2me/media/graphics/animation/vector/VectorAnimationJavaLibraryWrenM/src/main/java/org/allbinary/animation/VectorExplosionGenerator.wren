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

class VectorExplosionGenerator is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = VectorExplosionGenerator.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  RANDOM { _RANDOM }
  RANDOM=(value) { _RANDOM = value }
  ROTATION { _ROTATION }
  ROTATION=(value) { _ROTATION = value }
  vectorAnimationUtil { _vectorAnimationUtil }
  vectorAnimationUtil=(value) { _vectorAnimationUtil = value }
  randomRotationFactory { _randomRotationFactory }
  randomRotationFactory=(value) { _randomRotationFactory = value }

  initFields_VectorExplosionGenerator() {
    _RANDOM = null
    _ROTATION = null
    _vectorAnimationUtil = null
    _randomRotationFactory = null
        _RANDOM = VectorExplosionType.new()
        _ROTATION = VectorExplosionType.new()
        _vectorAnimationUtil = VectorAnimationUtil.getInstance()
        _randomRotationFactory = RandomRotationFactory.getInstance()
  }
    

    static getInstance() {
        return VectorExplosionGenerator.instance
    }
    

    construct new() {
    super()
    initFields_VectorExplosionGenerator()
    }
    

    createList(list, howMuch, type) {
        var point = null
        var size = list.size()
        var points = JR.listOf(size, Fn.new { List.filled(2, 0) })
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            point = list.objectArray[index]
            points[index][0] = point.getX()
            points[index][1] = point.getY()
            }
        }
        return this.createListFromPoints(list, points, howMuch, type)
    }
    

    getInstance(points, howMuch, type) {
        var pointsBasicArrayList = this.getInstanceStartFrame(points, howMuch, type, true)
        var tempBasicArrayList = pointsBasicArrayList.objectArray[0]
        var newPoints = _vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size())
        return newPoints
    }
    

    getInstanceStartFrame(points, howMuch, type, startFrame) {
        var jerror0 = Fiber.new {
            var pointsBasicArrayList = BasicArrayListS.new(howMuch)
            pointsBasicArrayList.add(this.createPointsBasicArrayList(points))
            var frameIndex = 0
            var tempBasicArrayList = null
            var pointBasicArrayList = null
            while ((frameIndex < howMuch)) {
                tempBasicArrayList = pointsBasicArrayList.objectArray[frameIndex]
                pointBasicArrayList = this.createListFromPoints(tempBasicArrayList, points, howMuch, type)
                pointsBasicArrayList.add(pointBasicArrayList)
                frameIndex = JR.i32(frameIndex + 1)
            }
            if (!startFrame) {
                pointsBasicArrayList.removeAt(0)
            }
            return pointsBasicArrayList
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
    }
    

    createListFromPoints(tempBasicArrayList, points, howMuch, type) {
        var index = 0
        var pointBasicArrayList = BasicArrayListD.new()
        var sectionBasicArrayList = null
        while ((index < points.count)) {
            sectionBasicArrayList = BasicArrayListD.new()
            while ((points[index][0] != 1000)) {
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index = JR.i32(index + 1)
                if ((index >= points.count)) {
                    break
                }
            }
            sectionBasicArrayList = RandomTranslation.getInstance(sectionBasicArrayList, howMuch)
            if ((type == _ROTATION)) {
                sectionBasicArrayList = _randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch)
            }
            var size = sectionBasicArrayList.size()
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size))) break
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2])
                }
            }
            if ((index >= points.count)) {
                break
            } else if ((points[index][0] == 1000)) {
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index = JR.i32(index + 1)
            }
        }
        return pointBasicArrayList
    }
    

    createPointsBasicArrayList(points) {
        if ((points.count == 0)) {
            Fiber.abort(JR.exception("Exception", "Not Points Provided"))
        }
        var firstPointBasicArrayList = BasicArrayListS.new(points.count)
        var pointFactory = PointFactory.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < points.count))) break
            firstPointBasicArrayList.add(pointFactory.createXY(points[index][0], points[index][1]))
            }
        }
        return firstPointBasicArrayList
    }
}

import "../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../org/allbinary/graphics/pipeline/RandomRotationFactory" for RandomRotationFactory
import "../../../org/allbinary/graphics/pipeline/RandomTranslation" for RandomTranslation
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../org/allbinary/util/BasicArrayListS" for BasicArrayListS
import "./VectorExplosionType" for VectorExplosionType
import "./VectorAnimationUtil" for VectorAnimationUtil

