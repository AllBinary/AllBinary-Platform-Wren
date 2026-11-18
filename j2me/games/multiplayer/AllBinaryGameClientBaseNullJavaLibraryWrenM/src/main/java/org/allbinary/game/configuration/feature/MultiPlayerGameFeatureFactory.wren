// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class MultiPlayerGameFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MultiPlayerGameFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_MultiPlayerGameFeatureFactory() {
  }
    

    static getInstance() {
        return MultiPlayerGameFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_MultiPlayerGameFeatureFactory()
    }
    

    addCommands(anyType) {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        var canvas = anyType
        canvas.addCommand(gameCommandsFactory.QUIT_COMMAND)
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory

