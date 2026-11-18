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

class NumberLayersSequenceAI is SequenceAI {
  numberOfLayersLeft { _numberOfLayersLeft }
  numberOfLayersLeft=(value) { _numberOfLayersLeft = value }

  initFields_NumberLayersSequenceAI() {
    _numberOfLayersLeft = 0
        
  }
    

    construct new(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput) {
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initFields_NumberLayersSequenceAI()
        _numberOfLayersLeft = numberOfEnemiesLeft
    }
    

    processAI(allBinaryLayerManager) {
        if ((this.getIndex() == 0)) {
            if ((allBinaryLayerManager.getSize() < _numberOfLayersLeft)) {
                this.setIndex(1)
            }
        }
        super.processAI(allBinaryLayerManager)
    }
}

import "../../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

