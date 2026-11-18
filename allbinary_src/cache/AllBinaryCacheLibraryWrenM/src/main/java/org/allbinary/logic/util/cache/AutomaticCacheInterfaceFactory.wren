/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

class AutomaticCacheInterfaceFactory is JObject {

  initFields_AutomaticCacheInterfaceFactory() {
  }
    

    construct new() {
    super()
    initFields_AutomaticCacheInterfaceFactory()
    }
    

    static getInstance(cacheableInterfaceFactoryInterface, cacheType, cachePolicy) {
        Fiber.abort(JR.exception("Exception", "No such " + cacheType.toString()))
    }
}

import "./AutomaticCacheInterface" for AutomaticCacheInterface
import "./CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./CacheType" for CacheType
import "./CachePolicy" for CachePolicy

