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
import "../../../../../../org/allbinary/game/ag/ai/ArrayAI" for ArrayAI

class SequenceAI is ArrayAI {
    static SEQUENCE_AI { "Sequence AI" }
  index { _index }
  index=(value) { _index = value }

  initFields_SequenceAI() {
    _index = 0
        _index = 0
  }
    

    construct new(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput) {
        super(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        initFields_SequenceAI()
    }
    

    processAI(allBinaryLayerManager) {
        this.getArtificialIntelligenceInterface()[_index].processAI(allBinaryLayerManager)
    }
    

    next() {
        _index = JR.i32(_index + 1)
        var artificialIntelligenceInterface = this.getSelectedArtificialIntelligenceInterface()
        if ((artificialIntelligenceInterface.getId() == ArtificialIntelligence.AI_ID)) {
            var artificialIntelligenceTransitionInterface = artificialIntelligenceInterface
            artificialIntelligenceTransitionInterface.transition()
        }
    }
    

    getIndex() {
        return _index
    }
    

    setIndex(index) {
        _index = index
    }
    

    getSelectedArtificialIntelligenceInterface() {
        return this.getArtificialIntelligenceInterface()[_index]
    }
    

    getName() {
        return SequenceAI.SEQUENCE_AI
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(super.toString())
        stringBuffer.append(" Selected AI: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getSelectedArtificialIntelligenceInterface()))
        return stringBuffer.toString()
    }
}

import "../../../../../../org/allbinary/ai/ArtificialIntelligence" for ArtificialIntelligence
import "../../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../../org/allbinary/ai/ArtificialIntelligenceTransitionInterface" for ArtificialIntelligenceTransitionInterface
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

