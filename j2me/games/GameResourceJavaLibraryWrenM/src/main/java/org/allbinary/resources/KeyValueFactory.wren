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
// package org.allbinary.resources

import "../../../allbinary_java" for JObject, JException, JR

class KeyValueFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = KeyValueFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  MAP { _MAP }
  MAP=(value) { _MAP = value }

  initFields_KeyValueFactory() {
    _MAP = null
        _MAP = StdUtil.getInstance().createHashtable()
  }

  construct new() {
    super()
    initFields_KeyValueFactory()
  }
    

    static getInstance() {
        return KeyValueFactory.instance
    }
    

    get(key) {
        if (!_MAP.containsKey(key)) {
            return key
        }
        return _MAP.get(key)
    }
}

import "../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../org/allbinary/util/ABHashtable" for ABHashtable

