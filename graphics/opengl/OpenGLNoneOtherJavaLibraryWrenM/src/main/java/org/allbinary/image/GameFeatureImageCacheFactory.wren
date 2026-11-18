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

class GameFeatureImageCacheFactory is JObject {

  initFields_GameFeatureImageCacheFactory() {
  }

  construct new() {
    super()
    initFields_GameFeatureImageCacheFactory()
  }
    

    static getInstance() {
        return ImageCacheFactory.getInstance()
    }
    

    static init() {
        ImageCacheFactory.init()
    }
    

    static releaseAll() {
        ImageCacheFactory.getInstance().releaseAll()
    }
}

import "./ImageCacheFactory" for ImageCacheFactory
import "./ImageCache" for ImageCache

