/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.configuration.persistance

import "../../../../../allbinary_java" for JObject, JException, JR

class GamePersistanceStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GamePersistanceStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SAVED_GAME_RECORD_ID { _SAVED_GAME_RECORD_ID }
  SAVED_GAME_RECORD_ID=(value) { _SAVED_GAME_RECORD_ID = value }
  SAVED_GAME_CONFIGURATION_RECORD_ID { _SAVED_GAME_CONFIGURATION_RECORD_ID }
  SAVED_GAME_CONFIGURATION_RECORD_ID=(value) { _SAVED_GAME_CONFIGURATION_RECORD_ID = value }
  DEFAULT_INPUT_MAPPING_RECORD_ID { _DEFAULT_INPUT_MAPPING_RECORD_ID }
  DEFAULT_INPUT_MAPPING_RECORD_ID=(value) { _DEFAULT_INPUT_MAPPING_RECORD_ID = value }
  SAVED_INPUT_CONFIGURATION_RECORD_ID { _SAVED_INPUT_CONFIGURATION_RECORD_ID }
  SAVED_INPUT_CONFIGURATION_RECORD_ID=(value) { _SAVED_INPUT_CONFIGURATION_RECORD_ID = value }

  initFields_GamePersistanceStrings() {
    _SAVED_GAME_RECORD_ID = null
    _SAVED_GAME_CONFIGURATION_RECORD_ID = null
    _DEFAULT_INPUT_MAPPING_RECORD_ID = null
    _SAVED_INPUT_CONFIGURATION_RECORD_ID = null
        _SAVED_GAME_RECORD_ID = "_SG"
        _SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
        _DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
        _SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
  }

  construct new() {
    super()
    initFields_GamePersistanceStrings()
  }
    

    static getInstance() {
        return GamePersistanceStrings.instance
    }
}


