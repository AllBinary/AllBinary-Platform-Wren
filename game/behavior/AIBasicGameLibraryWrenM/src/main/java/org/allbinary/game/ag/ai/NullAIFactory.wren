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
// package org.allbinary.game.ag.ai

import "../../../../../allbinary_java" for JObject, JException, JR

class NullAIFactory is JObject {
    static NULL_AI {
    if (__NULL_AI_set == null) {
      __NULL_AI_set = true
      __NULL_AI = NullAI.new()
    }
    return __NULL_AI
  }
  static NULL_AI=(value) {
    __NULL_AI_set = true
    __NULL_AI = value
  }

  initFields_NullAIFactory() {
  }

  construct new() {
    super()
    initFields_NullAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        return NullAIFactory.NULL_AI
    }
    

    static getInstance() {
        return NullAIFactory.NULL_AI
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./NullAI" for NullAI

