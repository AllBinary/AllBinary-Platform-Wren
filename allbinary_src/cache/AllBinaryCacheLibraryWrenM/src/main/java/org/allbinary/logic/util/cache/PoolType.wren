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

class PoolType is JObject {
  cacheType { _cacheType }
  cacheType=(value) { _cacheType = value }

  initFields_PoolType() {
    _cacheType = null
        
  }
    

    construct new(cacheType) {
    super()
    initFields_PoolType()
        _cacheType = cacheType
    }
    

    getCacheType() {
        return _cacheType
    }
    

    toString() {
        var POOL_TYPE = "PoolType: "
        return POOL_TYPE + this.getCacheType().toString()
    }
}

import "./CacheType" for CacheType

