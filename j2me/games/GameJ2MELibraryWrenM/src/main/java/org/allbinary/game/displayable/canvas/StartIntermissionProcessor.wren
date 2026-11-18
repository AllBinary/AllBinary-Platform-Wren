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
import "../../../../../org/allbinary/canvas/Processor" for Processor

class StartIntermissionProcessor is Processor {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }
  WAIT { _WAIT }
  WAIT=(value) { _WAIT = value }

  initFields_StartIntermissionProcessor() {
    _logUtil = null
    _commonStrings = null
    _gameCanvas = null
    _WAIT = 0
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        _WAIT = 5000
  }
    

    construct new(gameCanvas) {
    super()
    initFields_StartIntermissionProcessor()
        _gameCanvas = gameCanvas
    }
    

    process() {
        if (_gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(_WAIT)) {
            _logUtil.putF("Intermission End", this, _commonStrings.PROCESS)
            _gameCanvas.getStartIntermissionInterface().setEnabled(false)
        }
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

