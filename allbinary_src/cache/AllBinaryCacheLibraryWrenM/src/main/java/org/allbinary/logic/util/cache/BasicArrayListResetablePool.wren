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
// package org.allbinary.logic.util.cache

import "../../../../../allbinary_java" for JObject, JException, JR
import "./AbstractArrayListPool" for AbstractArrayListPool

class BasicArrayListResetablePool is AbstractArrayListPool {

  initFields_BasicArrayListResetablePool() {
  }
    

    construct new(cacheableInterfaceFactoryInterface) {
        super(cacheableInterfaceFactoryInterface)
    }
    

    clear() {
    }
    

    remove(key) {
        var size = this.buffers.size()
        if ((size > 0)) {
            return this.buffers.removeAt(JR.i32(size - 1))
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance(key)
        }
    }
}

import "./CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./CacheableInterface" for CacheableInterface

