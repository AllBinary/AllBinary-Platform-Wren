// Generated Code Do Not Modify
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR

class GameMidletStateFactory is JObject {
    static INSTANCE {
    if (__INSTANCE_set == null) {
      __INSTANCE_set = true
      __INSTANCE = GameMidletStateFactory.new()
    }
    return __INSTANCE
  }
  static INSTANCE=(value) {
    __INSTANCE_set = true
    __INSTANCE = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  currentGameState { _currentGameState }
  currentGameState=(value) { _currentGameState = value }

  initFields_GameMidletStateFactory() {
    _logUtil = null
    _currentGameState = null
        _logUtil = LogUtil.getInstance()
        _currentGameState = GameStateFactory.getInstance().NO_GAME_STATE
  }
    

    construct new() {
    super()
    initFields_GameMidletStateFactory()
    }
    

    static getInstance() {
        return GameMidletStateFactory.INSTANCE
    }
    

    getCurrentGameState() {
        return _currentGameState
    }
    

    setCurrentGameState(currentGameState) {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString(currentGameState)).toString(), this, "setCurrentGameState")
        _currentGameState = currentGameState
    }
}

import "../../../../org/allbinary/game/state/GameState" for GameState
import "../../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels

