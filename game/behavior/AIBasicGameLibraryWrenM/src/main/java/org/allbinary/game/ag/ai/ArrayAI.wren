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
import "../../../../../org/allbinary/game/ai/BasicAI" for BasicAI

class ArrayAI is BasicAI {
  artificialIntelligenceInterfaceArray { _artificialIntelligenceInterfaceArray }
  artificialIntelligenceInterfaceArray=(value) { _artificialIntelligenceInterfaceArray = value }

  initFields_ArrayAI() {
    _artificialIntelligenceInterfaceArray = null
        
  }
    

    construct new(artificialIntelligenceInterface, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_ArrayAI()
        _artificialIntelligenceInterfaceArray = artificialIntelligenceInterface
    }
    

    processAI(allBinaryLayerManager) {
        var size = _artificialIntelligenceInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager)
            }
        }
    }
    

    getArtificialIntelligenceInterface() {
        return _artificialIntelligenceInterfaceArray
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

