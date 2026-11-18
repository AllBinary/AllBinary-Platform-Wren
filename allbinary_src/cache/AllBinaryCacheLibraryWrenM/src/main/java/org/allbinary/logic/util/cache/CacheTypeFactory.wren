// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

import "../../../../../allbinary_java" for JObject, JException, JR

class CacheTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CacheTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NO_CACHE { _NO_CACHE }
  NO_CACHE=(value) { _NO_CACHE = value }
  CACHE { _CACHE }
  CACHE=(value) { _CACHE = value }
  SET { _SET }
  SET=(value) { _SET = value }
  CACHE_VECTOR { _CACHE_VECTOR }
  CACHE_VECTOR=(value) { _CACHE_VECTOR = value }

  initFields_CacheTypeFactory() {
    _NO_CACHE = null
    _CACHE = null
    _SET = null
    _CACHE_VECTOR = null
        _NO_CACHE = CacheType.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        _CACHE = CacheType.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        _SET = CacheType.new(StringUtil.getInstance().EMPTY_STRING, "Set")
        _CACHE_VECTOR = CacheType.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
  }

  construct new() {
    super()
    initFields_CacheTypeFactory()
  }
    

    static getInstance() {
        return CacheTypeFactory.instance
    }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./CacheType" for CacheType

