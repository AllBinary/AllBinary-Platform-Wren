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
// package org.allbinary.game.configuration.persistance

import "../../../../../allbinary_java" for JObject, JException, JR
import "./KeyValuePersistance" for KeyValuePersistance

class GameConfigurationPersistanceSingleton is KeyValuePersistance {
    static GAME_PERSISTANCE {
    if (__GAME_PERSISTANCE_set == null) {
      __GAME_PERSISTANCE_set = true
      __GAME_PERSISTANCE = GameConfigurationPersistanceSingleton.new()
    }
    return __GAME_PERSISTANCE
  }
  static GAME_PERSISTANCE=(value) {
    __GAME_PERSISTANCE_set = true
    __GAME_PERSISTANCE = value
  }

  initFields_GameConfigurationPersistanceSingleton() {
  }
    

    static getInstance() {
        return GameConfigurationPersistanceSingleton.GAME_PERSISTANCE
    }
    

    construct new() {
        super(GamePersistanceStrings.getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID)
    }
}

import "./GamePersistanceStrings" for GamePersistanceStrings

