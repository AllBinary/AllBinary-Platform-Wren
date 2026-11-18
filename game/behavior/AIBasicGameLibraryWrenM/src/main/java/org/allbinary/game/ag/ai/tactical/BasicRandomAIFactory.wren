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

class BasicRandomAIFactory is JObject {

  initFields_BasicRandomAIFactory() {
  }

  construct new() {
    super()
    initFields_BasicRandomAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        var visitor = hashtable.get(BasicAI.AI_VISITOR)
        if ((visitor == null)) {
            Fiber.abort(JR.exception("Exception", "No Visitor Provided"))
        }
        var inputProbability = hashtable.get(InputProbability.INPUT_PROBABILITY)
        return BasicRandomAI.new(ownerLayerInterface, gameInput, inputProbability, visitor)
    }
}

import "../../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../../org/allbinary/game/ai/BasicAI" for BasicAI
import "../../../../../../org/allbinary/game/ag/ai/InputProbability" for InputProbability
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./BasicRandomAI" for BasicRandomAI

