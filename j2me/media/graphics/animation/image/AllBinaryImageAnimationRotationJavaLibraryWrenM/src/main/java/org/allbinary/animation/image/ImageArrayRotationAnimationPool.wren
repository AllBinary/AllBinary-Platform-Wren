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
import "../../../../org/allbinary/logic/util/cache/BasicArrayListResetablePool" for BasicArrayListResetablePool

class ImageArrayRotationAnimationPool is BasicArrayListResetablePool {
    static IMAGE_ROTATION_ANIMATION_POOL {
    if (__IMAGE_ROTATION_ANIMATION_POOL_set == null) {
      __IMAGE_ROTATION_ANIMATION_POOL_set = true
      __IMAGE_ROTATION_ANIMATION_POOL = ImageArrayRotationAnimationPool.new(ImageArrayRotationAnimationCacheableInterfaceFactory.new())
    }
    return __IMAGE_ROTATION_ANIMATION_POOL
  }
  static IMAGE_ROTATION_ANIMATION_POOL=(value) {
    __IMAGE_ROTATION_ANIMATION_POOL_set = true
    __IMAGE_ROTATION_ANIMATION_POOL = value
  }

  initFields_ImageArrayRotationAnimationPool() {
  }
    

    construct new(cacheableInterfaceFactoryInterface) {
        super(cacheableInterfaceFactoryInterface)
    }
    

    static getInstance() {
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL
    }
    

    remove(key) {
        var cacheableInterface = super.remove(key)
        var allBinaryImageRotationAnimationInfo = key
        var imageArrayRotationAnimationCacheable = (cacheableInterface)
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray())
        return cacheableInterface
    }
}

import "../../../../org/allbinary/logic/util/cache/CacheableInterface" for CacheableInterface
import "../../../../org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "../../../../org/allbinary/logic/util/cache/PoolInterface" for PoolInterface
import "./ImageArrayRotationAnimationCacheableInterfaceFactory" for ImageArrayRotationAnimationCacheableInterfaceFactory
import "./ImageArrayRotationAnimationInfo" for ImageArrayRotationAnimationInfo
import "./ImageArrayRotationAnimationCacheable" for ImageArrayRotationAnimationCacheable

