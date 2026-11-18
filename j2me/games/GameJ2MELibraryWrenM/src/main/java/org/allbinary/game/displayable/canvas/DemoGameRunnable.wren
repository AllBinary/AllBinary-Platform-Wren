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
import "./GameRunnable" for GameRunnable

class DemoGameRunnable is GameRunnable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  demoCanvas { _demoCanvas }
  demoCanvas=(value) { _demoCanvas = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }

  initFields_DemoGameRunnable() {
    _logUtil = null
    _demoCanvas = null
    _gameTickTimeDelayHelper = null
        _logUtil = LogUtil.getInstance()
        
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
  }
    

    construct new(demoCanvas) {
    super()
    initFields_DemoGameRunnable()
        _demoCanvas = demoCanvas
    }
    

    run() {
        var jerror0 = Fiber.new {
            _demoCanvas.getLoopTimeHelperP().setStartTime(_gameTickTimeDelayHelper.setStartTime())
            _demoCanvas.processGame()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
    

    processLoopSleep() {
        _demoCanvas.processLoopSleep()
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "./DemoCanvas" for DemoCanvas

