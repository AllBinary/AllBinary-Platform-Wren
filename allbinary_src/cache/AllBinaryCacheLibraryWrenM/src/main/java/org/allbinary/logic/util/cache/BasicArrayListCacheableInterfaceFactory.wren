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

class BasicArrayListCacheableInterfaceFactory is JObject {

  initFields_BasicArrayListCacheableInterfaceFactory() {
  }

  construct new() {
    super()
    initFields_BasicArrayListCacheableInterfaceFactory()
  }
    

    getInstance(key) {
        return BasicArrayListCacheable.new()
    }
}

import "./CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./BasicArrayListCacheable" for BasicArrayListCacheable
import "./CacheableInterface" for CacheableInterface

