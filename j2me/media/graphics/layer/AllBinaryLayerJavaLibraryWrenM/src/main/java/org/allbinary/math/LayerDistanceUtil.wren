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

class LayerDistanceUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LayerDistanceUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  mathUtil { _mathUtil }
  mathUtil=(value) { _mathUtil = value }

  initFields_LayerDistanceUtil() {
    _mathUtil = null
        _mathUtil = MathUtil.getInstance()
  }

  construct new() {
    super()
    initFields_LayerDistanceUtil()
  }
    

    static getInstance() {
        return LayerDistanceUtil.instance
    }
    

    getDistance(layerInterface, layerInterface2) {
        var dx = (((layerInterface.getXP() + layerInterface.getHalfWidth())) - ((layerInterface2.getXP() + layerInterface2.getHalfWidth())))
        var dy = (((layerInterface.getYP() + layerInterface.getHalfHeight())) - ((layerInterface2.getYP() + layerInterface2.getHalfHeight())))
        return JR.i32(_mathUtil.sqrt(JR.i32((JR.i32(dx * dx)) + (JR.i32(dy * dy)))))
    }
    

    getDistance3D(layerInterface, layerInterface2) {
        var dx = (((layerInterface.getXP() + layerInterface.getHalfWidth())) - ((layerInterface2.getXP() + layerInterface2.getHalfWidth())))
        var dy = (((layerInterface.getYP() + layerInterface.getHalfHeight())) - ((layerInterface2.getYP() + layerInterface2.getHalfHeight())))
        var dz = (((layerInterface.getZP() + layerInterface.getHalfDepth())) - ((layerInterface2.getZP() + layerInterface2.getHalfDepth())))
        return JR.i32(_mathUtil.sqrt(JR.i32(JR.i32((JR.i32(dx * dx)) + (JR.i32(dy * dy))) + (JR.i32(dz * dz)))))
    }
    

    getDistanceAt(layerInterface, point) {
        var dx = (layerInterface.getXP() - point.getX())
        var dy = (layerInterface.getYP() - point.getY())
        return JR.i32(_mathUtil.sqrt(JR.i32((JR.i32(dx * dx)) + (JR.i32(dy * dy)))))
    }
}

import "../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../org/allbinary/logic/math/MathUtil" for MathUtil

