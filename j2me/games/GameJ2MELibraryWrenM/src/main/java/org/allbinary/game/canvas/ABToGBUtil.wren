/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.canvas

import "../../../../allbinary_java" for JObject, JException, JR

class ABToGBUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ABToGBUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  abCanvas { _abCanvas }
  abCanvas=(value) { _abCanvas = value }
  allBinaryGameLayerManager { _allBinaryGameLayerManager }
  allBinaryGameLayerManager=(value) { _allBinaryGameLayerManager = value }

  initFields_ABToGBUtil() {
    _abCanvas = null
    _allBinaryGameLayerManager = null
        _abCanvas = NullCanvas.NULL_CANVAS
        _allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance()
  }

  construct new() {
    super()
    initFields_ABToGBUtil()
  }
    

    static getInstance() {
        return ABToGBUtil.instance
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager

