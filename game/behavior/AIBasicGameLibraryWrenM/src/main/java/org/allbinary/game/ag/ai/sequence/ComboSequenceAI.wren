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
// package org.allbinary.game.ag.ai.sequence

import "../../../../../../allbinary_java" for JObject, JException, JR
import "./SequenceAI" for SequenceAI

class ComboSequenceAI is SequenceAI {

  initFields_ComboSequenceAI() {
  }
    

    construct new(artificialIntelligenceInterface, ownerLayerInterface, gameInput) {
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
    

    processAI(allBinaryLayerManager) {
        var artificialIntelligenceInterfaceArray = this.getArtificialIntelligenceInterface()
        var size = artificialIntelligenceInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            this.setIndex(index)
            super.processAI(allBinaryLayerManager)
            }
        }
    }
}

import "../../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

