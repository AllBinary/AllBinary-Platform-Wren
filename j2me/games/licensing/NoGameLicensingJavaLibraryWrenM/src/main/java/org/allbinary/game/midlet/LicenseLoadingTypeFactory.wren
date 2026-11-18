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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR

class LicenseLoadingTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LicenseLoadingTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  INITIAL_LOADING { _INITIAL_LOADING }
  INITIAL_LOADING=(value) { _INITIAL_LOADING = value }
  GAME_START { _GAME_START }
  GAME_START=(value) { _GAME_START = value }
  LOGIN { _LOGIN }
  LOGIN=(value) { _LOGIN = value }
  OTHER { _OTHER }
  OTHER=(value) { _OTHER = value }

  initFields_LicenseLoadingTypeFactory() {
    _INITIAL_LOADING = null
    _GAME_START = null
    _LOGIN = null
    _OTHER = null
        _INITIAL_LOADING = LicenseLoadingType.new("Initial Loading")
        _GAME_START = LicenseLoadingType.new("Game Start")
        _LOGIN = LicenseLoadingType.new("Login")
        _OTHER = LicenseLoadingType.new("Other/Usually The First Non Demo Level")
  }

  construct new() {
    super()
    initFields_LicenseLoadingTypeFactory()
  }
    

    static getIntance() {
        return LicenseLoadingTypeFactory.instance
    }
}

import "./LicenseLoadingType" for LicenseLoadingType

