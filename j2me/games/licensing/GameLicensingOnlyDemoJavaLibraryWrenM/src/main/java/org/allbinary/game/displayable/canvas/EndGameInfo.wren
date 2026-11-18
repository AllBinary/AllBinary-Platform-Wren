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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class EndGameInfo is JObject {
  NORMAL_GAME_OVER_WIN { _NORMAL_GAME_OVER_WIN }
  NORMAL_GAME_OVER_WIN=(value) { _NORMAL_GAME_OVER_WIN = value }
  TEASER_DEMO_GAME_END_LAST_LEVEL { _TEASER_DEMO_GAME_END_LAST_LEVEL }
  TEASER_DEMO_GAME_END_LAST_LEVEL=(value) { _TEASER_DEMO_GAME_END_LAST_LEVEL = value }
  TEASER_DEMO_GAME_END { _TEASER_DEMO_GAME_END }
  TEASER_DEMO_GAME_END=(value) { _TEASER_DEMO_GAME_END = value }
  gameOverStr { _gameOverStr }
  gameOverStr=(value) { _gameOverStr = value }
  winStr { _winStr }
  winStr=(value) { _winStr = value }

  initFields_EndGameInfo() {
    _NORMAL_GAME_OVER_WIN = null
    _TEASER_DEMO_GAME_END_LAST_LEVEL = null
    _TEASER_DEMO_GAME_END = null
    _gameOverStr = null
    _winStr = null
        _NORMAL_GAME_OVER_WIN = "You Won"
        _TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo."
        _TEASER_DEMO_GAME_END = "Demo Game Over."
        _gameOverStr = StringUtil.getInstance().EMPTY_STRING
        _winStr = _gameOverStr
  }

  construct new() {
    super()
    initFields_EndGameInfo()
  }
    

    update(gameInfo, myCanvas) {
        if (gameInfo.isLastLevel()) {
            this.setWinStr(_TEASER_DEMO_GAME_END_LAST_LEVEL)
            this.setGameOverStr(_TEASER_DEMO_GAME_END_LAST_LEVEL)
        } else {
            this.setWinStr(_NORMAL_GAME_OVER_WIN)
            this.setGameOverStr(_TEASER_DEMO_GAME_END)
        }
    }
    

    getGameOverStr() {
        return _gameOverStr
    }
    

    setGameOverStr(gameOverStr) {
        _gameOverStr = gameOverStr
    }
    

    getWinStr() {
        return _winStr
    }
    

    setWinStr(winStr) {
        _winStr = winStr
    }
}

import "../../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

