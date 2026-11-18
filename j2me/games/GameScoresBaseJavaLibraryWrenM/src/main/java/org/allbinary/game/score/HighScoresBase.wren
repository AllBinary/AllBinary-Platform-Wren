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

class HighScoresBase is JObject {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_HighScoresBase() {
    _commonStrings = null
        _commonStrings = CommonStrings.getInstance()
  }
    

    construct new() {
    super()
    initFields_HighScoresBase()
    }
    

    fetchHighScores(gameInfo, highScoresResultsListener) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    createHighScoresHelper() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./HighScoresFactoryInterface" for HighScoresFactoryInterface
import "./HighScoresResultsListener" for HighScoresResultsListener
import "./HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface

