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

class RunnableCanvasSingleThreadStartRunnable is GameRunnable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  runnableCanvas { _runnableCanvas }
  runnableCanvas=(value) { _runnableCanvas = value }

  initFields_RunnableCanvasSingleThreadStartRunnable() {
    _logUtil = null
    _runnableCanvas = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(demoCanvas) {
    super()
    initFields_RunnableCanvasSingleThreadStartRunnable()
        _runnableCanvas = demoCanvas
    }
    

    run() {
        var jerror0 = Fiber.new {
            _runnableCanvas.run()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
    

    processLoopSleep() {
        _runnableCanvas.processLoopSleep()
    }
}

import "../../../../../org/allbinary/canvas/RunnableCanvas" for RunnableCanvas
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

