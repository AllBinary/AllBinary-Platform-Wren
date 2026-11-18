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
// package org.allbinary.image.opengles

import "../../../../allbinary_java" for JObject, JException, JR

//OpenGLESNullImageJ2MEJavaLibrary
class OpenGLESImage is JObject {
    static NULL_OPENGL_IMAGE {
    if (__NULL_OPENGL_IMAGE_set == null) {
      __NULL_OPENGL_IMAGE_set = true
      __NULL_OPENGL_IMAGE = OpenGLESImage.new(NullImage.NULL_IMAGE, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY)
    }
    return __NULL_OPENGL_IMAGE
  }
  static NULL_OPENGL_IMAGE=(value) {
    __NULL_OPENGL_IMAGE_set = true
    __NULL_OPENGL_IMAGE = value
  }
    static texture2dList {
    if (__texture2dList_set == null) {
      __texture2dList_set = true
      __texture2dList = BasicArrayListD.new()
    }
    return __texture2dList
  }
  static texture2dList=(value) {
    __texture2dList_set = true
    __texture2dList = value
  }
    static TYPE { 4 }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  textureFactory { _textureFactory }
  textureFactory=(value) { _textureFactory = value }
  openGLBitmap { _openGLBitmap }
  openGLBitmap=(value) { _openGLBitmap = value }
  openGLESImageProperties { _openGLESImageProperties }
  openGLESImageProperties=(value) { _openGLESImageProperties = value }

  initFields_OpenGLESImage() {
    _commonStrings = null
    _textureFactory = null
    _openGLBitmap = null
    _openGLESImageProperties = null
        _commonStrings = CommonStrings.getInstance()
        
        
        _openGLESImageProperties = OpenGLESImageProperties.new()
  }
    

    construct new(image, bitmapFactory, textureFactory) {
    super()
    initFields_OpenGLESImage()
        _openGLBitmap = bitmapFactory.createBitmap(image)
        _textureFactory = textureFactory
    }
    

    set(gl) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    initTexture(gl) {
        return false
    }
    

    drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z) {
    }
    

    draw(gl, x, y, z) {
    }
    

    getType() {
        return OpenGLESImage.TYPE
    }
}

import "../../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/platform/graphics/PlatformBitmapBase" for PlatformBitmapBase
import "../../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory" for PlatformBitmapBaseFactory
import "../../../../org/allbinary/platform/opengles/PlatformTextureBaseFactory" for PlatformTextureBaseFactory
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./OpenGLSurfaceChangedInterface" for OpenGLSurfaceChangedInterface
import "./OpenGLESImageProperties" for OpenGLESImageProperties

