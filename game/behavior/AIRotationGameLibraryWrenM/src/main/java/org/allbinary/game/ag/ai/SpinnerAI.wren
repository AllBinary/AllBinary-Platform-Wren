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

class SpinnerAI is BasicAI {
  isEven { _isEven }
  isEven=(value) { _isEven = value }
  direction { _direction }
  direction=(value) { _direction = value }

  initFields_SpinnerAI() {
    _isEven = false
    _direction = null
        _isEven = false
        
  }
    

    construct new(direction, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_SpinnerAI()
        _direction = direction
    }
    

    processAI(allBinaryLayerManager) {
        if (_isEven) {
            super.processKeyAI(_direction[0])
            _isEven = false
        } else {
            super.processKeyAI(Canvas.KEY_NUM1)
            _isEven = true
        }
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

