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

class PoolInterfaceFactory is JObject {

  initFields_PoolInterfaceFactory() {
  }
    

    construct new() {
    super()
    initFields_PoolInterfaceFactory()
    }
    

    static getInstance(cacheableInterfaceFactoryInterface, poolType, cachePolicy) {
        Fiber.abort(JR.exception("Exception", "No Such PoolType: " + poolType.toString()))
    }
}

import "./PoolInterface" for PoolInterface
import "./CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./PoolType" for PoolType
import "./CachePolicy" for CachePolicy

