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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR

class CountedPickedUpLayerInterfaceFactoryPool is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = CountedPickedUpLayerInterfaceFactoryPool.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_CountedPickedUpLayerInterfaceFactoryPool() {
    _list = null
        
  }
    

    construct new() {
    super()
    initFields_CountedPickedUpLayerInterfaceFactoryPool()
        _list = BasicArrayListD.new()
    }
    

    getList() {
        return _list
    }
    

    static getInstance() {
        return CountedPickedUpLayerInterfaceFactoryPool.SINGLETON
    }
    

    static init() {
        CountedPickedUpLayerInterfaceFactoryPool.SINGLETON = CountedPickedUpLayerInterfaceFactoryPool.new()
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

