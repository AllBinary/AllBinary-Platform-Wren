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

class UpDownVectorAI is BasicAI {
  velocityInterface { _velocityInterface }
  velocityInterface=(value) { _velocityInterface = value }
  index { _index }
  index=(value) { _index = value }

  initFields_UpDownVectorAI() {
    _velocityInterface = null
    _index = 0
        
        _index = 0
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_UpDownVectorAI()
        var velocityInterfaceCompositeInterface = this.getOwnerLayerInterface()
        _velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        _velocityInterface.getVelocityYBasicDecimalP().setint(0)
    }
    

    processAI(allBinaryLayerManager) {
        var y = (this.getOwnerLayerInterface().getHeight() * 270)
        if ((_index < 5)) {
            var basicDecimal = _velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.addint(y)
            _index = JR.i32(_index + 1)
        } else if ((_index < 10)) {
            var basicDecimal = _velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.subtractint(y)
            _index = JR.i32(_index + 1)
        } else {
            _index = 0
            this.processAI(allBinaryLayerManager)
        }
    }
}

import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal

