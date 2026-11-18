/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class NullPlayerGameInputComposite is JObject {
    static NULL_PLAYER_GAME_INPUT_COMPOSITE {
    if (__NULL_PLAYER_GAME_INPUT_COMPOSITE_set == null) {
      __NULL_PLAYER_GAME_INPUT_COMPOSITE_set = true
      __NULL_PLAYER_GAME_INPUT_COMPOSITE = NullPlayerGameInputComposite.new()
    }
    return __NULL_PLAYER_GAME_INPUT_COMPOSITE
  }
  static NULL_PLAYER_GAME_INPUT_COMPOSITE=(value) {
    __NULL_PLAYER_GAME_INPUT_COMPOSITE_set = true
    __NULL_PLAYER_GAME_INPUT_COMPOSITE = value
  }

  initFields_NullPlayerGameInputComposite() {
  }

  construct new() {
    super()
    initFields_NullPlayerGameInputComposite()
  }
    

    getName() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    processInput(layerManager) {
    }
    

    initInputProcessors() {
    }
    

    getPlayerGameInput() {
        return NoPlayerGameInput.getInstance()
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./PlayerGameInputCompositeInterface" for PlayerGameInputCompositeInterface
import "./NoPlayerGameInput" for NoPlayerGameInput
import "./PlayerGameInput" for PlayerGameInput

