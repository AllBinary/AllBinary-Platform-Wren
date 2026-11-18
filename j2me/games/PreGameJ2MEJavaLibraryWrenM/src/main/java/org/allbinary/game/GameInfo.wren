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
// package org.allbinary.game

import "../../../allbinary_java" for JObject, JException, JR

class GameInfo is JObject {
    static NONE {
    if (__NONE_set == null) {
      __NONE_set = true
      __NONE = GameInfo.new(GameTypeFactory.getInstance().NONE, GameMode.NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1)
    }
    return __NONE
  }
  static NONE=(value) {
    __NONE_set = true
    __NONE = value
  }
    static LEVEL_NAME { "LEVEL" }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameInfoData { _gameInfoData }
  gameInfoData=(value) { _gameInfoData = value }
  gameType { _gameType }
  gameType=(value) { _gameType = value }
  gameMode { _gameMode }
  gameMode=(value) { _gameMode = value }
  playerType { _playerType }
  playerType=(value) { _playerType = value }
  highestLevel { _highestLevel }
  highestLevel=(value) { _highestLevel = value }
  currentLevel { _currentLevel }
  currentLevel=(value) { _currentLevel = value }
  NEW_LEVEL { _NEW_LEVEL }
  NEW_LEVEL=(value) { _NEW_LEVEL = value }
  SET_CURRENT_LEVEL { _SET_CURRENT_LEVEL }
  SET_CURRENT_LEVEL=(value) { _SET_CURRENT_LEVEL = value }
  NEXT_GAME_LEVEL { _NEXT_GAME_LEVEL }
  NEXT_GAME_LEVEL=(value) { _NEXT_GAME_LEVEL = value }

  initFields_GameInfo() {
    _logUtil = null
    _gameInfoData = null
    _gameType = null
    _gameMode = null
    _playerType = null
    _highestLevel = 0
    _currentLevel = 0
    _NEW_LEVEL = null
    _SET_CURRENT_LEVEL = null
    _NEXT_GAME_LEVEL = null
        _logUtil = LogUtil.getInstance()
        _gameInfoData = GameInfoData.getInstance()
        
        
        
        _highestLevel = 0
        
        _NEW_LEVEL = "New Level: "
        _SET_CURRENT_LEVEL = "setCurrentLevel"
        _NEXT_GAME_LEVEL = "nextGameLevel"
  }
    

    construct new(gameType, gameMode, playerType, highestLevel, currentLevel) {
    super()
    initFields_GameInfo()
        _gameType = gameType
        _gameMode = gameMode
        this.setHighestLevel(highestLevel)
        _currentLevel = currentLevel
        _playerType = playerType
    }
    

    getGameType() {
        return _gameType
    }
    

    getGameMode() {
        return _gameMode
    }
    

    getPlayerType() {
        return _playerType
    }
    

    getHighestLevel() {
        return _highestLevel
    }
    

    setHighestLevel(highestLevel) {
        _highestLevel = highestLevel
    }
    

    getCurrentLevel() {
        return _currentLevel
    }
    

    setCurrentLevel(currentLevel) {
        _currentLevel = currentLevel
        _logUtil.putF(StringMaker.new().append(_NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, _SET_CURRENT_LEVEL)
    }
    

    nextGameLevel() {
        if ((this.getCurrentLevel() < this.getHighestLevel())) {
            _currentLevel = JR.i32(_currentLevel + 1)
        }
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(_NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, _NEXT_GAME_LEVEL)
    }
    

    previousGameLevel() {
        if ((this.getCurrentLevel() > 1)) {
            _currentLevel = JR.i32(_currentLevel - 1)
        }
    }
    

    isLastLevel() {
        if ((this.getCurrentLevel() >= this.getHighestLevel())) {
            return true
        } else {
            return false
        }
    }
    

    toHashtable() {
        var hashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(_gameInfoData.GAME_TYPE, this.getGameType().toString())
        hashtable.put(_gameInfoData.GAME_MODE, _gameMode.toString())
        hashtable.put(_gameInfoData.PLAYER_TYPE, _playerType.toString())
        hashtable.put(_gameInfoData.HIGHEST_LEVEL, JR.str(this.getHighestLevel()))
        hashtable.put(_gameInfoData.CURRENT_LEVEL, JR.str(_currentLevel))
        return hashtable
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        stringBuffer.append(_gameInfoData.GAME_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(this.getGameType().toString())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(_gameInfoData.GAME_MODE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(_gameMode.toString())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(_gameInfoData.PLAYER_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(StringUtil.getInstance().toString(_playerType))
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(_gameInfoData.HIGHEST_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(this.getHighestLevel())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(_gameInfoData.CURRENT_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(_currentLevel)
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../java/lang/Integer" for Integer
import "./GameTypeFactory" for GameTypeFactory
import "./GameMode" for GameMode
import "./PlayerTypesFactory" for PlayerTypesFactory
import "./GameInfoData" for GameInfoData
import "./GameType" for GameType
import "./PlayerType" for PlayerType

