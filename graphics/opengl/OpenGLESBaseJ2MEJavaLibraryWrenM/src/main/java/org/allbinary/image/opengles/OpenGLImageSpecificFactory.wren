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

class OpenGLImageSpecificFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLImageSpecificFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  imageFactory { _imageFactory }
  imageFactory=(value) { _imageFactory = value }
  updating { _updating }
  updating=(value) { _updating = value }

  initFields_OpenGLImageSpecificFactory() {
    _imageFactory = null
    _updating = false
        _imageFactory = OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY
        _updating = false
  }

  construct new() {
    super()
    initFields_OpenGLImageSpecificFactory()
  }
    

    static getInstance() {
        return OpenGLImageSpecificFactory.instance
    }
    

    setImageFactory(imageFactory) {
        _imageFactory = imageFactory
        PreLogUtil.put(StringMaker.new().append("Selected Image Factory: ").append(StringUtil.getInstance().toString(_imageFactory)).toString(), this, "setImageFactory")
    }
    

    getImageFactory() {
        return _imageFactory
    }
}

import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./OpenGLImageFactory" for OpenGLImageFactory

