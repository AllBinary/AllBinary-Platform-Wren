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
// package org.allbinary.game.input.mapping

import "../../../../../allbinary_java" for JObject, JException, JR

class GameInputMapping is JObject {
  name { _name }
  name=(value) { _name = value }
  gameKey { _gameKey }
  gameKey=(value) { _gameKey = value }

  initFields_GameInputMapping() {
    _name = null
    _gameKey = null
        _name = StringUtil.getInstance().EMPTY_STRING
        _gameKey = GameKey.NULL_GAME_KEY
  }
    

    construct new(name, gameKey) {
    super()
    initFields_GameInputMapping()
        this.setName(name)
        this.setGameKey(gameKey)
    }
    

    setGameKey(gameKey) {
        _gameKey = gameKey
    }
    

    getGameKey() {
        return _gameKey
    }
    

    setName(name) {
        _name = name
    }
    

    getName() {
        return _name
    }
}

import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

