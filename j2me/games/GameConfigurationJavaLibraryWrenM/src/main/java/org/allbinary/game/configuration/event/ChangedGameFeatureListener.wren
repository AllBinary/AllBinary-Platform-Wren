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
// package org.allbinary.game.configuration.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "./BaseChangedGameFeatureListener" for BaseChangedGameFeatureListener

class ChangedGameFeatureListener is BaseChangedGameFeatureListener {
    static gameFeatureListener {
    if (__gameFeatureListener_set == null) {
      __gameFeatureListener_set = true
      __gameFeatureListener = ChangedGameFeatureListener.new()
    }
    return __gameFeatureListener
  }
  static gameFeatureListener=(value) {
    __gameFeatureListener_set = true
    __gameFeatureListener = value
  }

  initFields_ChangedGameFeatureListener() {
  }

  construct new() {
    super()
    initFields_ChangedGameFeatureListener()
  }
    

    static getInstance() {
        return ChangedGameFeatureListener.gameFeatureListener
    }
    

    isChangedGameConfiguration(gameConfiguration) {
        return this.list.contains(gameConfiguration)
    }
}

import "../../../../../org/allbinary/game/configuration/GameConfiguration" for GameConfiguration

