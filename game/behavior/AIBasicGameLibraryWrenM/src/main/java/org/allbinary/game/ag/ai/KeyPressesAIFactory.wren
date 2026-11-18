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

class KeyPressesAIFactory is JObject {

  initFields_KeyPressesAIFactory() {
  }

  construct new() {
    super()
    initFields_KeyPressesAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        var isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing()
        if (isSingleKeyProcessing) {
            return KeyPressesAI.new(hashtable, ownerLayerInterface, gameInput)
        } else {
            return MultiKeyPressesAI.new(hashtable, ownerLayerInterface, gameInput)
        }
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./MultiKeyPressesAI" for MultiKeyPressesAI
import "./KeyPressesAI" for KeyPressesAI

