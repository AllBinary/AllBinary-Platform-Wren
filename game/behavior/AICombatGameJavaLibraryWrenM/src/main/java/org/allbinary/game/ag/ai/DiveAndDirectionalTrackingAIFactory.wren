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

class DiveAndDirectionalTrackingAIFactory is JObject {

  initFields_DiveAndDirectionalTrackingAIFactory() {
  }

  construct new() {
    super()
    initFields_DiveAndDirectionalTrackingAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        var visitorCanBeNull = hashtable.get(BasicAI.AI_VISITOR)
        if ((visitorCanBeNull == null)) {
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance()
        }
        var hashtable2 = BasicProbabilityAIDataFactory.new().getInstance()
        hashtable2.put(BasicAI.AI_VISITOR, LastKeyAIVisitorFactory.getInstance())
        var artificialIntelligenceInterface = BasicRandomAIFactory.new().getInstance(hashtable2, ownerLayerInterface, gameInput)
        return DiveAndDirectionalTrackingAI.new(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitorCanBeNull)
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory" for BasicRandomAIFactory
import "../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../org/allbinary/game/ai/BasicAI" for BasicAI
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./ThrustAIVisitorFactory" for ThrustAIVisitorFactory
import "./BasicProbabilityAIDataFactory" for BasicProbabilityAIDataFactory
import "./LastKeyAIVisitorFactory" for LastKeyAIVisitorFactory
import "./DiveAndDirectionalTrackingAI" for DiveAndDirectionalTrackingAI

