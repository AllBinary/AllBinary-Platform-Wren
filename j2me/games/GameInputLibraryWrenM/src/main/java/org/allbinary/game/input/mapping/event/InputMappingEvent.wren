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
// package org.allbinary.game.input.mapping.event

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class InputMappingEvent is AllBinaryEventObject {
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }

  initFields_InputMappingEvent() {
    _inputToGameKeyMapping = null
        _inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
  }
    

    construct new(anyType) {
        super(anyType)
        initFields_InputMappingEvent()
    }
    

    setInputToGameKeyMapping(inputToGameKeyMapping) {
        _inputToGameKeyMapping = inputToGameKeyMapping
    }
    

    getInputToGameKeyMapping() {
        return _inputToGameKeyMapping
    }
}

import "../../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping

