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
// package org.allbinary.game.ag.ai.scroller

import "../../../../../../allbinary_java" for JObject, JException, JR

class RandomPatrolFlockingFiringAIFactory is JObject {

  initFields_RandomPatrolFlockingFiringAIFactory() {
  }

  construct new() {
    super()
    initFields_RandomPatrolFlockingFiringAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        var artificialIntelligenceInterface = List.filled(2, null)
        artificialIntelligenceInterface[0] = RandomPatrolAI.new(hashtable, ownerLayerInterface, gameInput)
        artificialIntelligenceInterface[1] = TimedFireAI.new(1800, ownerLayerInterface, gameInput)
        return ArrayAI.new(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
}

import "../../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../../org/allbinary/game/ag/ai/ArrayAI" for ArrayAI
import "../../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./RandomPatrolAI" for RandomPatrolAI
import "./TimedFireAI" for TimedFireAI

