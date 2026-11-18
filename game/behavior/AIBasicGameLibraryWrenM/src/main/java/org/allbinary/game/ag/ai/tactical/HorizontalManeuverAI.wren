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
// package org.allbinary.game.ag.ai.tactical

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/ai/BasicAI" for BasicAI

class HorizontalManeuverAI is BasicAI {
  currentRelativeAngle { _currentRelativeAngle }
  currentRelativeAngle=(value) { _currentRelativeAngle = value }
  currentSpeed { _currentSpeed }
  currentSpeed=(value) { _currentSpeed = value }

  initFields_HorizontalManeuverAI() {
    _currentRelativeAngle = 0
    _currentSpeed = 0
        _currentRelativeAngle = 0
        
  }
    

    construct new(ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_HorizontalManeuverAI()
        _currentSpeed = 5
    }
    

    processAI(allBinaryLayerManager) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var x = ownerLayerInterface.getXP()
        if (((ownerLayerInterface.getXP() - _currentSpeed) <= 0)) {
            this.reverse()
            this.drop()
        }
        if (((ownerLayerInterface.getX2() + _currentSpeed) > DisplayInfoSingleton.getInstance().getLastWidth())) {
            this.reverse()
            this.accelerate()
            this.drop()
        }
        if ((_currentRelativeAngle == 0)) {
            x = JR.i32(x + _currentSpeed)
        } else if ((_currentRelativeAngle == 180)) {
            x = JR.i32(x - _currentSpeed)
        }
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP())
        if ((_currentRelativeAngle == 0)) {
            super.processKeyAI(Canvas.KEY_NUM0)
        } else if ((_currentRelativeAngle == 180)) {
            super.processKeyAI(Canvas.KEY_POUND)
        }
    }
    

    reverse() {
        if ((_currentRelativeAngle == 180)) {
            _currentRelativeAngle = 0
        } else if ((_currentRelativeAngle == 0)) {
            _currentRelativeAngle = 180
        }
    }
    

    accelerate() {
        if ((_currentSpeed < 20)) {
            _currentSpeed = JR.i32(_currentSpeed + 1)
        }
    }
    

    drop() {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var y = ownerLayerInterface.getYP()
        if (((ownerLayerInterface.getY2() + ownerLayerInterface.getHeight()) > DisplayInfoSingleton.getInstance().getLastHeight())) {
            y = 0
        } else {
            y = JR.i32(y + (ownerLayerInterface.getHeight() + 1))
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

