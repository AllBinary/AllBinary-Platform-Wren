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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "./Input" for Input

class GameKey is Input {
    static NULL_GAME_KEY {
    if (__NULL_GAME_KEY_set == null) {
      __NULL_GAME_KEY_set = true
      __NULL_GAME_KEY = GameKey.new(-1, StringUtil.getInstance().NULL_STRING)
    }
    return __NULL_GAME_KEY
  }
  static NULL_GAME_KEY=(value) {
    __NULL_GAME_KEY_set = true
    __NULL_GAME_KEY = value
  }

  initFields_GameKey() {
  }
    

    construct new(key, name) {
        super(key, name)
    }
    

    toString() {
        return StringMaker.new().append("GameKey ").append(super.toString()).toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

