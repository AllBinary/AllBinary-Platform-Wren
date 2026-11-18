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
import "../../../../../org/allbinary/game/ag/ai/tactical/LurchAI" for LurchAI

class LurchRotationAI is LurchAI {
  rotationAnimationInterface { _rotationAnimationInterface }
  rotationAnimationInterface=(value) { _rotationAnimationInterface = value }

  initFields_LurchRotationAI() {
    _rotationAnimationInterface = null
        
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_LurchRotationAI()
        var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
        _rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        this.update()
    }
    

    reverse() {
        super.reverse()
        this.update()
    }
    

    update() {
        if ((this.currentRelativeAngle == 0)) {
            var rotationAnimationInterface = _rotationAnimationInterface
            var angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
        } else if ((this.currentRelativeAngle == 180)) {
            var rotationAnimationInterface = _rotationAnimationInterface
            var angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue())
        }
    }
}

import "../../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../../org/allbinary/animation/RotationAnimationInterface" for RotationAnimationInterface
import "../../../../../org/allbinary/animation/RotationAnimationInterfaceCompositeInterface" for RotationAnimationInterfaceCompositeInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/math/AngleIncrementInfo" for AngleIncrementInfo

