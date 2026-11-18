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

class GameCanvasRunnable is GameRunnable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameTickDisplayInfoSingleton { _gameTickDisplayInfoSingleton }
  gameTickDisplayInfoSingleton=(value) { _gameTickDisplayInfoSingleton = value }
  allBinaryGameCanvas { _allBinaryGameCanvas }
  allBinaryGameCanvas=(value) { _allBinaryGameCanvas = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }

  initFields_GameCanvasRunnable() {
    _logUtil = null
    _gameTickDisplayInfoSingleton = null
    _allBinaryGameCanvas = null
    _gameTickTimeDelayHelper = null
        _logUtil = LogUtil.getInstance()
        _gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
        
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
  }
    

    construct new(allBinaryGameCanvas) {
    super()
    initFields_GameCanvasRunnable()
        _allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    run() {
        var jerror0 = Fiber.new {
            _allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(_gameTickTimeDelayHelper.setStartTime())
            _gameTickDisplayInfoSingleton.update()
            _allBinaryGameCanvas.processGame()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
    

    processLoopSleep() {
        _allBinaryGameCanvas.processLoopSleep()
    }
}

import "../../../../../org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton" for GameTickDisplayInfoSingleton
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

