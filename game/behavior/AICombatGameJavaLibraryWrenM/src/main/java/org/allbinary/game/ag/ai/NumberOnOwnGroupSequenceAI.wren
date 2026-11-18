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
import "../../../../../org/allbinary/game/ag/ai/sequence/SequenceAI" for SequenceAI

class NumberOnOwnGroupSequenceAI is SequenceAI {
  numberOnSameTeam { _numberOnSameTeam }
  numberOnSameTeam=(value) { _numberOnSameTeam = value }

  initFields_NumberOnOwnGroupSequenceAI() {
    _numberOnSameTeam = null
        
  }
    

    construct new(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput) {
        super(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initFields_NumberOnOwnGroupSequenceAI()
        _numberOnSameTeam = numberOnSameTeam
    }
    

    processAI(allBinaryLayerManager) {
        var layerInterface = this.getOwnerLayerInterface()
        var index = this.getIndex()
        if ((_numberOnSameTeam.count > index)) {
            var size = GroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface)
            if ((_numberOnSameTeam[index].intValue() > size)) {
                this.next()
            }
        }
        super.processAI(allBinaryLayerManager)
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener" for GroupLayerManagerListener
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../java/lang/Integer" for Integer

