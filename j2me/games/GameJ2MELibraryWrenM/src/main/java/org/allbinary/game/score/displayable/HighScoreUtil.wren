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
// package org.allbinary.game.score.displayable

import "../../../../../allbinary_java" for JObject, JException, JR

class HighScoreUtil is JObject {
    static SUBMIT_TEXTBOX_COMMAND {
    if (__SUBMIT_TEXTBOX_COMMAND_set == null) {
      __SUBMIT_TEXTBOX_COMMAND_set = true
      __SUBMIT_TEXTBOX_COMMAND = Command.new("Submit", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    return __SUBMIT_TEXTBOX_COMMAND
  }
  static SUBMIT_TEXTBOX_COMMAND=(value) {
    __SUBMIT_TEXTBOX_COMMAND_set = true
    __SUBMIT_TEXTBOX_COMMAND = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  highScoresFactoryInterface { _highScoresFactoryInterface }
  highScoresFactoryInterface=(value) { _highScoresFactoryInterface = value }
  highScoresArray { _highScoresArray }
  highScoresArray=(value) { _highScoresArray = value }
  highScore { _highScore }
  highScore=(value) { _highScore = value }
  abeClientInformation { _abeClientInformation }
  abeClientInformation=(value) { _abeClientInformation = value }
  gameInfo { _gameInfo }
  gameInfo=(value) { _gameInfo = value }
  highScoresHelper { _highScoresHelper }
  highScoresHelper=(value) { _highScoresHelper = value }
  firstTime { _firstTime }
  firstTime=(value) { _firstTime = value }

  initFields_HighScoreUtil() {
    _logUtil = null
    _commonStrings = null
    _highScoresFactoryInterface = null
    _highScoresArray = null
    _highScore = null
    _abeClientInformation = null
    _gameInfo = null
    _highScoresHelper = null
    _firstTime = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        
        
        
        
        _firstTime = true
  }
    

    construct new(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore) {
    super()
    initFields_HighScoreUtil()
        _highScoresFactoryInterface = highScoresFactoryInterface
        _highScoresHelper = highScoresHelper
        _highScoresArray = _highScoresHelper.getHighScoresArray()
        _highScore = highScore
        _abeClientInformation = abeClientInformation
        _gameInfo = gameInfo
    }
    

    setHighScoresArray(highScoresArray) {
        _highScoresArray = highScoresArray
        _firstTime = false
        this.saveHighScore()
    }
    

    update(name) {
        HighScoreNamePersistanceSingleton.getInstance().save(_abeClientInformation, _gameInfo, name)
        _highScore.setName(name)
    }
    

    saveHighScore() {
        _logUtil.putF(StringMaker.new().append(_commonStrings.START).append(StringUtil.getInstance().toString(_highScore)).toString(), this, "saveHighScore")
        var size = _highScoresArray.count
        if ((_firstTime && (size == 0))) {
            _logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore")
            _highScoresFactoryInterface.fetchHighScores(_gameInfo, this)
            return
        }
        var highScores = null
        var highScoresAsString = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            highScores = _highScoresArray[index]
            highScores.addHighScore(_highScore)
            highScoresAsString = highScores.toString()
            _logUtil.putF(StringMaker.new().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore")
            }
        }
        _highScoresHelper.setHighScoresArray(_highScoresArray)
    }
    

    submit(myCanvas) {
        var commandListener = myCanvas.getCustomCommandListener()
        commandListener.commandAction(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas)
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../../org/allbinary/game/score/HighScore" for HighScore
import "../../../../../org/allbinary/game/score/HighScoreNamePersistanceSingleton" for HighScoreNamePersistanceSingleton
import "../../../../../org/allbinary/game/score/HighScores" for HighScores
import "../../../../../org/allbinary/game/score/HighScoresFactoryInterface" for HighScoresFactoryInterface
import "../../../../../org/allbinary/game/score/HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface
import "../../../../../org/allbinary/game/score/HighScoresResultsListener" for HighScoresResultsListener
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

