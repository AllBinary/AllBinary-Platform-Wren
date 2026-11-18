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
// package org.allbinary.midlet

import "../../../allbinary_java" for JObject, JException, JR

class MidletStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MidletStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  COMMAND_ACTION { _COMMAND_ACTION }
  COMMAND_ACTION=(value) { _COMMAND_ACTION = value }

  initFields_MidletStrings() {
    _COMMAND_ACTION = null
        _COMMAND_ACTION = "commandAction"
  }

  construct new() {
    super()
    initFields_MidletStrings()
  }
    

    static getInstance() {
        return MidletStrings.instance
    }
}


