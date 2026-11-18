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
// package org.allbinary.game.ag.ai.tactical

import "../../../../../../allbinary_java" for JObject, JException, JR

class HorizontalManeuverAIFactory is JObject {

  initFields_HorizontalManeuverAIFactory() {
  }

  construct new() {
    super()
    initFields_HorizontalManeuverAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        return HorizontalManeuverAI.new(ownerLayerInterface, gameInput)
    }
}

import "../../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./HorizontalManeuverAI" for HorizontalManeuverAI

