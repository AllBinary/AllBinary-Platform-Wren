// Generated Code Do Not Modify
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory" for PlatformBitmapBaseFactory

class OpenGLBitmapFactory is PlatformBitmapBaseFactory {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLBitmapFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ARGB_8888 { _ARGB_8888 }
  ARGB_8888=(value) { _ARGB_8888 = value }

  initFields_OpenGLBitmapFactory() {
    _ARGB_8888 = null
        _ARGB_8888 = OpenGLBitmapConfig.new(NullUtil.getInstance().NULL_OBJECT)
  }

  construct new() {
    super()
    initFields_OpenGLBitmapFactory()
  }
    

    static getInstance() {
        return OpenGLBitmapFactory.instance
    }
    

    createBitmap(width, height, config) {
        return OpenGLBitmap.new(NullUtil.getInstance().NULL_OBJECT)
    }
    

    decodeStream(inputStream) {
        return OpenGLBitmap.new(NullUtil.getInstance().NULL_OBJECT)
    }
    

    createBitmap(image) {
        return OpenGLBitmap.new(NullUtil.getInstance().NULL_OBJECT)
    }
}

import "../../../java/io/IOException" for IOException
import "../../../java/io/InputStream" for InputStream
import "../../../javax/microedition/lcdui/Image" for Image
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/platform/graphics/PlatformBitmapBase" for PlatformBitmapBase
import "./OpenGLBitmapConfig" for OpenGLBitmapConfig
import "./OpenGLBitmap" for OpenGLBitmap

