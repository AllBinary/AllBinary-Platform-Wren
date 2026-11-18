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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR

class LockedResources is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LockedResources.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  LOCKED_DEMO_GAME_FEATURE_RESOURCE { _LOCKED_DEMO_GAME_FEATURE_RESOURCE }
  LOCKED_DEMO_GAME_FEATURE_RESOURCE=(value) { _LOCKED_DEMO_GAME_FEATURE_RESOURCE = value }

  initFields_LockedResources() {
    _LOCKED_DEMO_GAME_FEATURE_RESOURCE = null
        _LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png"
  }

  construct new() {
    super()
    initFields_LockedResources()
  }
    

    static getInstance() {
        return LockedResources.instance
    }
}


