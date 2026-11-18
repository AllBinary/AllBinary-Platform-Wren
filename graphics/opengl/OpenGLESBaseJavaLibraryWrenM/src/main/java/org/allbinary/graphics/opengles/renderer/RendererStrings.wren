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
// package org.allbinary.graphics.opengles.renderer

import "../../../../../allbinary_java" for JObject, JException, JR

class RendererStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = RendererStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ON_SURFACE_CREATED { _ON_SURFACE_CREATED }
  ON_SURFACE_CREATED=(value) { _ON_SURFACE_CREATED = value }
  ON_SURFACE_CHANGED { _ON_SURFACE_CHANGED }
  ON_SURFACE_CHANGED=(value) { _ON_SURFACE_CHANGED = value }
  ON_DRAW_FRAME { _ON_DRAW_FRAME }
  ON_DRAW_FRAME=(value) { _ON_DRAW_FRAME = value }
  ON_DRAW_FRAME_THREED { _ON_DRAW_FRAME_THREED }
  ON_DRAW_FRAME_THREED=(value) { _ON_DRAW_FRAME_THREED = value }
  ON_DRAW_FRAME_2D { _ON_DRAW_FRAME_2D }
  ON_DRAW_FRAME_2D=(value) { _ON_DRAW_FRAME_2D = value }

  initFields_RendererStrings() {
    _ON_SURFACE_CREATED = null
    _ON_SURFACE_CHANGED = null
    _ON_DRAW_FRAME = null
    _ON_DRAW_FRAME_THREED = null
    _ON_DRAW_FRAME_2D = null
        _ON_SURFACE_CREATED = "onSurfaceCreated"
        _ON_SURFACE_CHANGED = "onSurfaceChanged"
        _ON_DRAW_FRAME = "onDrawFrame"
        _ON_DRAW_FRAME_THREED = "onDrawFrameThreed"
        _ON_DRAW_FRAME_2D = "onDrawFrame2d"
  }

  construct new() {
    super()
    initFields_RendererStrings()
  }
    

    static getInstance() {
        return RendererStrings.instance
    }
}


