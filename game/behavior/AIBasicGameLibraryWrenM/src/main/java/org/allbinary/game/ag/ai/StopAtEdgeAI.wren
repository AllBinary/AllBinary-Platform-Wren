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

class StopAtEdgeAI is BasicAI {

  initFields_StopAtEdgeAI() {
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
    }
    

    processAI(allBinaryLayerManager) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var velocityInterfaceCompositeInterface = (ownerLayerInterface)
        var velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties()
        var x = ownerLayerInterface.getXP()
        var y = ownerLayerInterface.getYP()
        var x2 = ownerLayerInterface.getX2()
        var y2 = ownerLayerInterface.getY2()
        var width = ownerLayerInterface.getWidth()
        var height = ownerLayerInterface.getHeight()
        var displayInfo = DisplayInfoSingleton.getInstance()
        if (((x2 + velocityProperties.getVelocityXBasicDecimalP().getScaled()) > displayInfo.getLastWidth())) {
            ownerLayerInterface.setPosition((displayInfo.getLastWidth() - width), y, ownerLayerInterface.getZP())
            velocityProperties.getVelocityYBasicDecimalP().setint(0)
        }
        if (((y2 + velocityProperties.getVelocityYBasicDecimalP().getScaled()) > displayInfo.getLastHeight())) {
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight() - height), ownerLayerInterface.getZP())
            velocityProperties.getVelocityXBasicDecimalP().setint(0)
        }
        if (((x + velocityProperties.getVelocityXBasicDecimalP().getScaled()) < 0)) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP())
            velocityProperties.getVelocityYBasicDecimalP().setint(0)
        }
        if (((y + velocityProperties.getVelocityYBasicDecimalP().getScaled()) < 0)) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP())
            velocityProperties.getVelocityXBasicDecimalP().setint(0)
        }
    }
}

import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

