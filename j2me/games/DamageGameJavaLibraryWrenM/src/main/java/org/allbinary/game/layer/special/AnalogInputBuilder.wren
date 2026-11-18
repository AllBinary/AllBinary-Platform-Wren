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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR

class AnalogInputBuilder is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AnalogInputBuilder.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_AnalogInputBuilder() {
  }

  construct new() {
    super()
    initFields_AnalogInputBuilder()
  }
    

    static getInstance() {
        return AnalogInputBuilder.instance
    }
    

    disable(inputProcessorArray, collidableDestroyableDamageableLayer) {
        inputProcessorArray[Canvas.UP] = SpecialUpGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.DOWN] = SpecialDownGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.RIGHT] = SpecialRightGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.LEFT] = SpecialLeftGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM0] = Special1GameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM5] = Special3GameInputProcessor.new(collidableDestroyableDamageableLayer)
    }
    

    enable(inputProcessorArray, collidableDestroyableDamageableLayer) {
        inputProcessorArray[Canvas.UP] = SpecialAnalogUpGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.DOWN] = SpecialAnalogDownGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.RIGHT] = SpecialAnalogRightGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.LEFT] = SpecialAnalogLeftGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor.new(collidableDestroyableDamageableLayer)
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/input/GameInputProcessor" for GameInputProcessor
import "./SpecialUpGameInputProcessor" for SpecialUpGameInputProcessor
import "./SpecialDownGameInputProcessor" for SpecialDownGameInputProcessor
import "./SpecialRightGameInputProcessor" for SpecialRightGameInputProcessor
import "./SpecialLeftGameInputProcessor" for SpecialLeftGameInputProcessor
import "./Special1GameInputProcessor" for Special1GameInputProcessor
import "./Special3GameInputProcessor" for Special3GameInputProcessor
import "./CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer
import "./SpecialAnalogUpGameInputProcessor" for SpecialAnalogUpGameInputProcessor
import "./SpecialAnalogDownGameInputProcessor" for SpecialAnalogDownGameInputProcessor
import "./SpecialAnalogRightGameInputProcessor" for SpecialAnalogRightGameInputProcessor
import "./SpecialAnalogLeftGameInputProcessor" for SpecialAnalogLeftGameInputProcessor
import "./SpecialAnalogLeftTriggerGameInputProcessor" for SpecialAnalogLeftTriggerGameInputProcessor
import "./SpecialAnalogRightTriggerGameInputProcessor" for SpecialAnalogRightTriggerGameInputProcessor

