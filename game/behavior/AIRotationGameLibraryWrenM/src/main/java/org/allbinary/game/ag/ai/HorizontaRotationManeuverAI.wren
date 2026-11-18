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

class HorizontaRotationManeuverAI is BasicAI {
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  currentSpeedDivisor { _currentSpeedDivisor }
  currentSpeedDivisor=(value) { _currentSpeedDivisor = value }
  rotationAnimationInterface { _rotationAnimationInterface }
  rotationAnimationInterface=(value) { _rotationAnimationInterface = value }
  baseVelocityInterface { _baseVelocityInterface }
  baseVelocityInterface=(value) { _baseVelocityInterface = value }
  velocityInterface { _velocityInterface }
  velocityInterface=(value) { _velocityInterface = value }

  initFields_HorizontaRotationManeuverAI() {
    _circularIndexUtil = null
    _currentSpeedDivisor = 0
    _rotationAnimationInterface = null
    _baseVelocityInterface = null
    _velocityInterface = null
        _circularIndexUtil = CircularIndexUtil.createInstanceAt(10, Integer.MAX_VALUE)
        _currentSpeedDivisor = 5
        
        
        
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_HorizontaRotationManeuverAI()
        var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
        _rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        var velocityInterfaceCompositeInterface = this.getOwnerLayerInterface()
        _baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        _velocityInterface = _baseVelocityInterface
        var rotationAnimationInterface = _rotationAnimationInterface
        var angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
    }
    

    transition() {
        var rotationAnimationInterface = _rotationAnimationInterface
        var angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
        var allbinaryLayer = this.getOwnerLayerInterface()
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP())
    }
    

    processAI(allBinaryLayerManager) {
        var rotationAnimationInterface = (_rotationAnimationInterface)
        var angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        var frame = _rotationAnimationInterface.getFrame()
        var ownerLayerInterface = this.getOwnerLayerInterface()
        if ((((ownerLayerInterface.getXP() - ownerLayerInterface.getWidth()) <= 0) && (frame == angleIncrementInfo.LEFT_FRAME.intValue()))) {
            this.reverse()
            this.drop()
        }
        var displayInfo = DisplayInfoSingleton.getInstance()
        if ((((ownerLayerInterface.getX2() + ownerLayerInterface.getWidth()) > displayInfo.getLastWidth()) && (frame == angleIncrementInfo.RIGHT_FRAME.intValue()))) {
            this.reverse()
            this.accelerate()
            this.drop()
        }
        var index = _circularIndexUtil.getIndex()
        if ((((index % _currentSpeedDivisor) == 0) && ((index % 2) == 0))) {
            super.processKeyAI(Canvas.UP)
            _velocityInterface.limitMaxXYVelocity((_velocityInterface.getMaxForwardVelocity() / _currentSpeedDivisor))
        }
        _circularIndexUtil.next()
        if ((frame == angleIncrementInfo.LEFT_FRAME.intValue())) {
            super.processKeyAI(Canvas.KEY_NUM0)
        } else if ((frame == angleIncrementInfo.RIGHT_FRAME.intValue())) {
            super.processKeyAI(Canvas.KEY_POUND)
        }
    }
    

    reverse() {
        var rotationAnimationInterface = _rotationAnimationInterface
        var angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        var frame = _rotationAnimationInterface.getFrame()
        if ((frame == angleIncrementInfo.LEFT_FRAME.intValue())) {
            var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
            _baseVelocityInterface.zero()
        } else if ((frame == angleIncrementInfo.RIGHT_FRAME.intValue())) {
            var rotationAnimationInterfaceCompositeInterface = this.getOwnerLayerInterface()
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue())
            _baseVelocityInterface.zero()
        }
    }
    

    accelerate() {
        if ((_currentSpeedDivisor > 1)) {
            _currentSpeedDivisor = JR.i32(_currentSpeedDivisor - 1)
        }
    }
    

    drop() {
        var displayInfo = DisplayInfoSingleton.getInstance()
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var y = ownerLayerInterface.getYP()
        if (((ownerLayerInterface.getY2() + ownerLayerInterface.getHeight()) > displayInfo.getLastHeight())) {
            y = 0
        } else {
            y = JR.i32(y + (ownerLayerInterface.getHeight() + 1))
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    }
    

    getId() {
        return ArtificialIntelligence.AI_ID
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/ai/ArtificialIntelligence" for ArtificialIntelligence
import "../../../../../org/allbinary/ai/ArtificialIntelligenceTransitionInterface" for ArtificialIntelligenceTransitionInterface
import "../../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../../org/allbinary/animation/RotationAnimationInterface" for RotationAnimationInterface
import "../../../../../org/allbinary/animation/RotationAnimationInterfaceCompositeInterface" for RotationAnimationInterfaceCompositeInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterface" for VelocityInterface
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/math/AngleIncrementInfo" for AngleIncrementInfo
import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "../../../../../java/lang/Integer" for Integer

