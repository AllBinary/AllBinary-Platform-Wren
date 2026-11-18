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
// package org.allbinary.game.tick

import "../../../../allbinary_java" for JObject, JException, JR

class NullTickable is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NullTickable.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  NAME { _NAME }
  NAME=(value) { _NAME = value }

  initFields_NullTickable() {
    _NAME = null
        _NAME = "NulLTickable"
  }

  construct new() {
    super()
    initFields_NullTickable()
  }
    

    static getInstance() {
        return NullTickable.SINGLETON
    }
    

    processTick(allBinaryLayerManager) {
    }
    

    getName() {
        return _NAME
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./TickableInterface" for TickableInterface

