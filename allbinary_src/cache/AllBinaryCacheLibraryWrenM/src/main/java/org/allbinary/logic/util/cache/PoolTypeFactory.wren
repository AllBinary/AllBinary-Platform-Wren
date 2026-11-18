// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

import "../../../../../allbinary_java" for JObject, JException, JR

class PoolTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PoolTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  VECTOR_POOL { _VECTOR_POOL }
  VECTOR_POOL=(value) { _VECTOR_POOL = value }

  initFields_PoolTypeFactory() {
    _VECTOR_POOL = null
        _VECTOR_POOL = PoolType.new(CacheTypeFactory.getInstance().NO_CACHE)
  }

  construct new() {
    super()
    initFields_PoolTypeFactory()
  }
    

    static getInstance() {
        return PoolTypeFactory.instance
    }
}

import "./PoolType" for PoolType
import "./CacheTypeFactory" for CacheTypeFactory

