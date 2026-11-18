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

class CacheInterfaceFactory is JObject {

  initFields_CacheInterfaceFactory() {
  }
    

    construct new() {
    super()
    initFields_CacheInterfaceFactory()
    }
    

    static getInstance(cacheType, cachePolicy) {
        Fiber.abort(JR.exception("Exception", "No such " + cacheType.toString()))
    }
}

import "./CacheInterface" for CacheInterface
import "./CacheType" for CacheType
import "./CachePolicy" for CachePolicy

