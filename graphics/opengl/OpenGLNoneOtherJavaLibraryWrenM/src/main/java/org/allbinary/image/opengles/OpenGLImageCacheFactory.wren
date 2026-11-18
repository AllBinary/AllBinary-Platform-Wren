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

//OpenGLNoneOtherJavaLibrary
class OpenGLImageCacheFactory is JObject {
    static IMAGE_CACHE {
    if (__IMAGE_CACHE_set == null) {
      __IMAGE_CACHE_set = true
      __IMAGE_CACHE = ImageCache.NULL_IMAGE_CACHE
    }
    return __IMAGE_CACHE
  }
  static IMAGE_CACHE=(value) {
    __IMAGE_CACHE_set = true
    __IMAGE_CACHE = value
  }

  initFields_OpenGLImageCacheFactory() {
  }

  construct new() {
    super()
    initFields_OpenGLImageCacheFactory()
  }
    

    static getInstance() {
        return OpenGLImageCacheFactory.IMAGE_CACHE
    }
    

    static init() {
        if ((OpenGLImageCacheFactory.IMAGE_CACHE == null)) {
        }
    }
}

import "../../../../org/allbinary/image/ImageCache" for ImageCache

