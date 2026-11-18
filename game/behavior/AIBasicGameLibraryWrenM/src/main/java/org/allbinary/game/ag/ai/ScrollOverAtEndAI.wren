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

class ScrollOverAtEndAI is BasicAI {

  initFields_ScrollOverAtEndAI() {
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
    }
    

    processAI(allBinaryLayerManager) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var x = ownerLayerInterface.getXP()
        var y = ownerLayerInterface.getYP()
        var width = ownerLayerInterface.getWidth()
        var height = ownerLayerInterface.getHeight()
        var displayInfo = DisplayInfoSingleton.getInstance()
        if ((x > displayInfo.getLastWidth())) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP())
        }
        if ((y > displayInfo.getLastHeight())) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP())
        }
        if ((x < -width)) {
            ownerLayerInterface.setPosition((displayInfo.getLastWidth() - width), y, ownerLayerInterface.getZP())
        }
        if ((y < -height)) {
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight() - height), ownerLayerInterface.getZP())
        }
    }
}

import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

