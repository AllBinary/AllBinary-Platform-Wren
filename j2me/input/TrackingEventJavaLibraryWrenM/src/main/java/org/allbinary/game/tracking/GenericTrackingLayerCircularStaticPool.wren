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
// package org.allbinary.game.tracking

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/layer/AllBinaryLayerCircularPool" for AllBinaryLayerCircularPool

class GenericTrackingLayerCircularStaticPool is AllBinaryLayerCircularPool {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = GenericTrackingLayerCircularStaticPool.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_GenericTrackingLayerCircularStaticPool() {
  }
    

    construct new() {
    super()
    initFields_GenericTrackingLayerCircularStaticPool()
    }
    

    static getInstance() {
        return GenericTrackingLayerCircularStaticPool.SINGLETON
    }
}


