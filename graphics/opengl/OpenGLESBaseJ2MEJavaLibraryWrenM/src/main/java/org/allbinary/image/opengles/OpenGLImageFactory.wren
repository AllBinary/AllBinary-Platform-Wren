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

class OpenGLImageFactory is JObject {
    static NULL_OPENGL_IMAGE_FACTORY {
    if (__NULL_OPENGL_IMAGE_FACTORY_set == null) {
      __NULL_OPENGL_IMAGE_FACTORY_set = true
      __NULL_OPENGL_IMAGE_FACTORY = OpenGLImageFactory.new()
    }
    return __NULL_OPENGL_IMAGE_FACTORY
  }
  static NULL_OPENGL_IMAGE_FACTORY=(value) {
    __NULL_OPENGL_IMAGE_FACTORY_set = true
    __NULL_OPENGL_IMAGE_FACTORY = value
  }

  initFields_OpenGLImageFactory() {
  }

  construct new() {
    super()
    initFields_OpenGLImageFactory()
  }
    

    getInstance(image, bitmapFactory, textureFactory) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory" for PlatformBitmapBaseFactory
import "../../../../org/allbinary/platform/opengles/PlatformTextureBaseFactory" for PlatformTextureBaseFactory

