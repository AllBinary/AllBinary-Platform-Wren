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

class CachePolicyFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CachePolicyFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NAME { _NAME }
  NAME=(value) { _NAME = value }
  MAX_TIME_THOUSAND_MAX { _MAX_TIME_THOUSAND_MAX }
  MAX_TIME_THOUSAND_MAX=(value) { _MAX_TIME_THOUSAND_MAX = value }
  THIRTY_MINUTES_TEN_THOUSAND_MAX { _THIRTY_MINUTES_TEN_THOUSAND_MAX }
  THIRTY_MINUTES_TEN_THOUSAND_MAX=(value) { _THIRTY_MINUTES_TEN_THOUSAND_MAX = value }
  THIRTY_MINUTES_FIFTY_THOUSAND_MAX { _THIRTY_MINUTES_FIFTY_THOUSAND_MAX }
  THIRTY_MINUTES_FIFTY_THOUSAND_MAX=(value) { _THIRTY_MINUTES_FIFTY_THOUSAND_MAX = value }
  ONE_MINUTE_FIVE_MAX { _ONE_MINUTE_FIVE_MAX }
  ONE_MINUTE_FIVE_MAX=(value) { _ONE_MINUTE_FIVE_MAX = value }
  ONE_MINUTE_TEN_MAX { _ONE_MINUTE_TEN_MAX }
  ONE_MINUTE_TEN_MAX=(value) { _ONE_MINUTE_TEN_MAX = value }
  ONE_MINUTE_ONE_HUNDRED_MAX { _ONE_MINUTE_ONE_HUNDRED_MAX }
  ONE_MINUTE_ONE_HUNDRED_MAX=(value) { _ONE_MINUTE_ONE_HUNDRED_MAX = value }

  initFields_CachePolicyFactory() {
    _NAME = null
    _MAX_TIME_THOUSAND_MAX = null
    _THIRTY_MINUTES_TEN_THOUSAND_MAX = null
    _THIRTY_MINUTES_FIFTY_THOUSAND_MAX = null
    _ONE_MINUTE_FIVE_MAX = null
    _ONE_MINUTE_TEN_MAX = null
    _ONE_MINUTE_ONE_HUNDRED_MAX = null
        _NAME = "lru"
        _MAX_TIME_THOUSAND_MAX = CachePolicy.new(_NAME, Long.MAX_VALUE, 1000)
        _THIRTY_MINUTES_TEN_THOUSAND_MAX = CachePolicy.new(_NAME, JR.i32(JR.i32(1000 * 60) * 30), 10000)
        _THIRTY_MINUTES_FIFTY_THOUSAND_MAX = CachePolicy.new(_NAME, JR.i32(JR.i32(1000 * 60) * 30), 100000)
        _ONE_MINUTE_FIVE_MAX = CachePolicy.new(_NAME, JR.i32(JR.i32(1000 * 60) * 1), 5)
        _ONE_MINUTE_TEN_MAX = CachePolicy.new(_NAME, JR.i32(JR.i32(1000 * 60) * 1), 10)
        _ONE_MINUTE_ONE_HUNDRED_MAX = CachePolicy.new(_NAME, JR.i32(JR.i32(1000 * 60) * 1), 100)
  }

  construct new() {
    super()
    initFields_CachePolicyFactory()
  }
    

    static getInstance() {
        return CachePolicyFactory.instance
    }
}

import "../../../../../java/lang/Long" for Long
import "./CachePolicy" for CachePolicy

