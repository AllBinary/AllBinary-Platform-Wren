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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class GameInputProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameInputProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_GameInputProcessor() {
  }
    

    static getInstance() {
        return GameInputProcessor.instance
    }
    

    construct new() {
    super()
    initFields_GameInputProcessor()
    }
    

    processEvent(allbinaryLayerManager, gameKeyEvent) {
    }
    

    processReleasedEvent(allbinaryLayerManager, gameKeyEvent) {
    }
    

    processAnalog(allbinaryLayerManager, gameKeyEvent, analogValue) {
    }
    

    process(allbinaryLayerManager, keyAsInteger) {
    }
    

    processReleased(allbinaryLayerManager, keyAsInteger) {
    }
}

import "../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../java/lang/Integer" for Integer

