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

class RandomRotationFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = RandomRotationFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  myRandomFactory { _myRandomFactory }
  myRandomFactory=(value) { _myRandomFactory = value }
  angleFactory { _angleFactory }
  angleFactory=(value) { _angleFactory = value }

  initFields_RandomRotationFactory() {
    _myRandomFactory = null
    _angleFactory = null
        _myRandomFactory = MyRandomFactory.getInstance()
        _angleFactory = AngleFactory.getInstance()
  }

  construct new() {
    super()
    initFields_RandomRotationFactory()
  }
    

    static getInstance() {
        return RandomRotationFactory.instance
    }
    

    getInstanceList(vector, howMuch) {
        var graphicsPipe = BasicGraphicsPipeline.new(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.rotateToAngle(_angleFactory.getAt(this.getNextRandomAngle(howMuch)))
        return graphicsPipe.getMatrix()
    }
    

    getNextRandomAngle(howMuch) {
        return _myRandomFactory.getNextInt(JR.i32(howMuch * 10))
    }
}

import "../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./BasicGraphicsPipeline" for BasicGraphicsPipeline

