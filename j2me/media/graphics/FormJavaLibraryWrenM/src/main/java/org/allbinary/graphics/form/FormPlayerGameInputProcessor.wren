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
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/canvas/Processor" for Processor

class FormPlayerGameInputProcessor is Processor {
  playerGameInputCompositeInterface { _playerGameInputCompositeInterface }
  playerGameInputCompositeInterface=(value) { _playerGameInputCompositeInterface = value }

  initFields_FormPlayerGameInputProcessor() {
    _playerGameInputCompositeInterface = null
        
  }
    

    construct new(playerGameInputCompositeInterface) {
    super()
    initFields_FormPlayerGameInputProcessor()
        _playerGameInputCompositeInterface = playerGameInputCompositeInterface
    }
    

    process() {
        _playerGameInputCompositeInterface.getPlayerGameInput().update()
    }
}

import "../../../../org/allbinary/game/input/PlayerGameInputCompositeInterface" for PlayerGameInputCompositeInterface

