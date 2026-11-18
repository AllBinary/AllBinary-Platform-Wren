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

class ScrollOverAtHalfAI is BasicAI {

  initFields_ScrollOverAtHalfAI() {
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
    }
    

    processAI(allBinaryLayerManager) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var x = ownerLayerInterface.getXP()
        var y = ownerLayerInterface.getYP()
        var halfWidth = ownerLayerInterface.getHalfWidth()
        var halfHeight = ownerLayerInterface.getHalfHeight()
        var displayInfo = DisplayInfoSingleton.getInstance()
        if ((x > (displayInfo.getLastWidth() - halfWidth))) {
            ownerLayerInterface.setPosition(JR.i32(halfWidth + 1), y, ownerLayerInterface.getZP())
        }
        if ((y > (displayInfo.getLastHeight() - halfHeight))) {
            ownerLayerInterface.setPosition(x, JR.i32(halfHeight + 1), ownerLayerInterface.getZP())
        }
        if ((x < -halfWidth)) {
            ownerLayerInterface.setPosition((displayInfo.getLastWidth() - halfWidth), y, ownerLayerInterface.getZP())
        }
        if ((y < -halfHeight)) {
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight() - halfHeight), ownerLayerInterface.getZP())
        }
    }
}

import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

