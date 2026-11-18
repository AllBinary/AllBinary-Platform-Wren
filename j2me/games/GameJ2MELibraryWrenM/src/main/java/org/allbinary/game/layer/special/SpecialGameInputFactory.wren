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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR

class SpecialGameInputFactory is JObject {
    static NO_SPECIAL_GAME_INPUT {
    if (__NO_SPECIAL_GAME_INPUT_set == null) {
      __NO_SPECIAL_GAME_INPUT_set = true
      __NO_SPECIAL_GAME_INPUT = SpecialGameInput.new()
    }
    return __NO_SPECIAL_GAME_INPUT
  }
  static NO_SPECIAL_GAME_INPUT=(value) {
    __NO_SPECIAL_GAME_INPUT_set = true
    __NO_SPECIAL_GAME_INPUT = value
  }

  initFields_SpecialGameInputFactory() {
  }

  construct new() {
    super()
    initFields_SpecialGameInputFactory()
  }
}

import "./SpecialGameInput" for SpecialGameInput

