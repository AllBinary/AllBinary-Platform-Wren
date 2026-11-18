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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR
import "./HighScoresBase" for HighScoresBase

class NoHighScoresFactory is HighScoresBase {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoHighScoresFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  NO_HIGH_SCORES { _NO_HIGH_SCORES }
  NO_HIGH_SCORES=(value) { _NO_HIGH_SCORES = value }

  initFields_NoHighScoresFactory() {
    _logUtil = null
    _NO_HIGH_SCORES = null
        _logUtil = LogUtil.getInstance()
        _NO_HIGH_SCORES = List.filled(0, null)
  }
    

    static getInstance() {
        return NoHighScoresFactory.instance
    }
    

    construct new() {
    super()
    initFields_NoHighScoresFactory()
    }
    

    fetchHighScores(gameInfo, highScoresResultsListener) {
        _logUtil.putF("Getting No HighScores", this, "fetchHighScores")
        highScoresResultsListener.setHighScoresArray(_NO_HIGH_SCORES)
    }
    

    createHighScoresHelper() {
        return HighScoresHelperBase.new()
    }
}

import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "./HighScores" for HighScores
import "./HighScoresResultsListener" for HighScoresResultsListener
import "./HighScoresHelperBase" for HighScoresHelperBase
import "./HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface

