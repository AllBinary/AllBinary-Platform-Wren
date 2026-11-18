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

class GameDifficultyFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameDifficultyFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  level { _level }
  level=(value) { _level = value }

  initFields_GameDifficultyFactory() {
    _level = 0
        _level = 0
  }

  construct new() {
    super()
    initFields_GameDifficultyFactory()
  }
    

    static getInstance() {
        return GameDifficultyFactory.instance
    }
    

    setLevel(level) {
        _level = level
    }
    

    getLevel() {
        return _level
    }
}


