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
// package org.allbinary.graphics.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class CanvasStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CanvasStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  CONSTRUCTOR { _CONSTRUCTOR }
  CONSTRUCTOR=(value) { _CONSTRUCTOR = value }
  PAUSE { _PAUSE }
  PAUSE=(value) { _PAUSE = value }
  UN_PAUSE { _UN_PAUSE }
  UN_PAUSE=(value) { _UN_PAUSE = value }
  SET_FULL_SCREEN_MODE { _SET_FULL_SCREEN_MODE }
  SET_FULL_SCREEN_MODE=(value) { _SET_FULL_SCREEN_MODE = value }
  SIZE_CHANGED { _SIZE_CHANGED }
  SIZE_CHANGED=(value) { _SIZE_CHANGED = value }
  SCALED_IMAGES { _SCALED_IMAGES }
  SCALED_IMAGES=(value) { _SCALED_IMAGES = value }
  PAINT { _PAINT }
  PAINT=(value) { _PAINT = value }
  ON_DISPLAY_CHANGE_EVENT { _ON_DISPLAY_CHANGE_EVENT }
  ON_DISPLAY_CHANGE_EVENT=(value) { _ON_DISPLAY_CHANGE_EVENT = value }
  UPDATE_MEASUREMENT { _UPDATE_MEASUREMENT }
  UPDATE_MEASUREMENT=(value) { _UPDATE_MEASUREMENT = value }
  FD_WIDTH { _FD_WIDTH }
  FD_WIDTH=(value) { _FD_WIDTH = value }
  FD_HEIGHT { _FD_HEIGHT }
  FD_HEIGHT=(value) { _FD_HEIGHT = value }
  EMPTY_CHILD_NAME_LIST { _EMPTY_CHILD_NAME_LIST }
  EMPTY_CHILD_NAME_LIST=(value) { _EMPTY_CHILD_NAME_LIST = value }
  ABOUT { _ABOUT }
  ABOUT=(value) { _ABOUT = value }
  OPTIONS { _OPTIONS }
  OPTIONS=(value) { _OPTIONS = value }
  FONT_ATLAS { _FONT_ATLAS }
  FONT_ATLAS=(value) { _FONT_ATLAS = value }
  OBJ_MODEL { _OBJ_MODEL }
  OBJ_MODEL=(value) { _OBJ_MODEL = value }
  MD2_MODEL { _MD2_MODEL }
  MD2_MODEL=(value) { _MD2_MODEL = value }
  u_PNG { _u_PNG }
  u_PNG=(value) { _u_PNG = value }

  initFields_CanvasStrings() {
    _CONSTRUCTOR = null
    _PAUSE = null
    _UN_PAUSE = null
    _SET_FULL_SCREEN_MODE = null
    _SIZE_CHANGED = null
    _SCALED_IMAGES = null
    _PAINT = null
    _ON_DISPLAY_CHANGE_EVENT = null
    _UPDATE_MEASUREMENT = null
    _FD_WIDTH = null
    _FD_HEIGHT = null
    _EMPTY_CHILD_NAME_LIST = null
    _ABOUT = null
    _OPTIONS = null
    _FONT_ATLAS = null
    _OBJ_MODEL = null
    _MD2_MODEL = null
    _u_PNG = null
        _CONSTRUCTOR = "MyCanvas::MyCanvas"
        _PAUSE = "MyCanvas::pause"
        _UN_PAUSE = "MyCanvas::unPause"
        _SET_FULL_SCREEN_MODE = "setFullScreenMode"
        _SIZE_CHANGED = "sizeChanged"
        _SCALED_IMAGES = "scaledImages"
        _PAINT = "paint"
        _ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent"
        _UPDATE_MEASUREMENT = "updateMeasurement"
        _FD_WIDTH = " font/display width: "
        _FD_HEIGHT = " font/display height: "
        _EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
        _ABOUT = "About"
        _OPTIONS = "Options"
        _FONT_ATLAS = "/font.png"
        _OBJ_MODEL = "_obj"
        _MD2_MODEL = "_md2"
        _u_PNG = ".png"
  }

  construct new() {
    super()
    initFields_CanvasStrings()
  }
    

    static getInstance() {
        return CanvasStrings.instance
    }
}

import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

