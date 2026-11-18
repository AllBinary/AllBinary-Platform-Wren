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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR

class ImageArrayRotationAnimationCacheableInterfaceFactory is JObject {

  initFields_ImageArrayRotationAnimationCacheableInterfaceFactory() {
  }

  construct new() {
    super()
    initFields_ImageArrayRotationAnimationCacheableInterfaceFactory()
  }
    

    getInstance(key) {
        return ImageArrayRotationAnimationCacheable.new(key, AnimationBehavior.getInstance())
    }
}

import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/logic/util/cache/CacheableInterface" for CacheableInterface
import "../../../../org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./ImageArrayRotationAnimationCacheable" for ImageArrayRotationAnimationCacheable

