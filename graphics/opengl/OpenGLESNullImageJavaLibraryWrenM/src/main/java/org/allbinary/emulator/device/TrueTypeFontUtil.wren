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
// package org.allbinary.emulator.device

import "../../../../allbinary_java" for JObject, JException, JR
import "./TrueTypeFontUtilBase" for TrueTypeFontUtilBase

class TrueTypeFontUtil is TrueTypeFontUtilBase {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TrueTypeFontUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  fontImage { _fontImage }
  fontImage=(value) { _fontImage = value }

  initFields_TrueTypeFontUtil() {
    _fontImage = null
        _fontImage = OpenGLESImage.NULL_OPENGL_IMAGE
  }
    

    static getInstance() {
        return TrueTypeFontUtil.instance
    }
    

    construct new() {
        super(1)
        initFields_TrueTypeFontUtil()
    }
    

    getAsTextureSize(textureSize) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getCellSize(cellSize) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getFontBitmap(filename, fontSize, cellSize, basicColor) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    saveFontAtlasAsFile() {
    }
    

    getFontBitmapGL(gl, filename, cellSize, basicColor) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getFontWidths(filename, fontSize) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/image/opengles/OpenGLESImage" for OpenGLESImage

