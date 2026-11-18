/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class HighScoresHelperBase is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  highScoresArrayP { _highScoresArrayP }
  highScoresArrayP=(value) { _highScoresArrayP = value }

  initFields_HighScoresHelperBase() {
    _logUtil = null
    _highScoresArrayP = null
        _logUtil = LogUtil.getInstance()
        _highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray
  }

  construct new() {
    super()
    initFields_HighScoresHelperBase()
  }
    

    setHighScoresArray(highScoresArrayP) {
        if ((highScoresArrayP != null)) {
            var commonStrings = CommonStrings.getInstance()
            _logUtil.putF(StringMaker.new().append(commonStrings.START).appendint(highScoresArrayP.count).toString(), this, "setHighScoresArray")
        } else {
            var commonStrings = CommonStrings.getInstance()
            _logUtil.putF(commonStrings.START, this, "setHighScoresArray")
        }
        _highScoresArrayP = highScoresArrayP
    }
    

    getNextHighScores() {
        return NullHighScoresSingletonFactory.getInstance()
    }
    

    isAnyHighScores() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    setSelectedHighScores(selectedHighScores) {
    }
    

    getSelectedHighScores() {
        return NullHighScoresSingletonFactory.getInstance()
    }
    

    getHighScoresArray() {
        return _highScoresArrayP
    }
    

    selectHighScores() {
    }
}

import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface
import "./LastFetchHighScoresFactory" for LastFetchHighScoresFactory
import "./HighScores" for HighScores
import "./NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory

