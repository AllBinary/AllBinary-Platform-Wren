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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

class ImageCacheFactory is JObject {
    static IMAGE_CACHE {
    if (__IMAGE_CACHE_set == null) {
      __IMAGE_CACHE_set = true
      __IMAGE_CACHE = ImageCache.new()
    }
    return __IMAGE_CACHE
  }
  static IMAGE_CACHE=(value) {
    __IMAGE_CACHE_set = true
    __IMAGE_CACHE = value
  }

  initFields_ImageCacheFactory() {
  }

  construct new() {
    super()
    initFields_ImageCacheFactory()
  }
    

    static getInstance() {
        return ImageCacheFactory.IMAGE_CACHE
    }
    

    static init() {
    }
}

import "./ImageCache" for ImageCache

