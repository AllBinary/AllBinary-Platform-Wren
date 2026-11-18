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
// package org.allbinary.game.configuration

import "../../../../allbinary_java" for JObject, JException, JR

class GameSpeed is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameSpeed.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_GameSpeed() {
  }

  construct new() {
    super()
    initFields_GameSpeed()
  }
    

    getSpeed() {
        var speedGameConfiguration = GameConfigurationCentral.getInstance().SPEED
        return (((speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue()) + 1))
    }
    

    getDelay() {
        var speedGameConfiguration = GameConfigurationCentral.getInstance().SPEED
        return (19 * ((speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue())))
    }
    

    static getInstance() {
        return GameSpeed.instance
    }
}

import "./GameConfigurationCentral" for GameConfigurationCentral
import "./GameConfiguration" for GameConfiguration

