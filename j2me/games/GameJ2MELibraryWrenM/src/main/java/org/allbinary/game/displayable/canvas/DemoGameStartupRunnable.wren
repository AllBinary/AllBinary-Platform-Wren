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
import "../../../../../org/allbinary/thread/ABRunnable" for ABRunnable

class DemoGameStartupRunnable is ABRunnable {
    static TYPE { 4 }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  demoCanvas { _demoCanvas }
  demoCanvas=(value) { _demoCanvas = value }

  initFields_DemoGameStartupRunnable() {
    _logUtil = null
    _demoCanvas = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(demoCanvas) {
    super()
    initFields_DemoGameStartupRunnable()
        _demoCanvas = demoCanvas
    }
    

    run() {
        var jerror0 = Fiber.new {
            this.setRunning(true)
            _demoCanvas.stopGameDemo()
            _demoCanvas.create()
            _demoCanvas.start()
            this.setRunning(false)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.setRunning(false)
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
    

    getType() {
        return DemoGameStartupRunnable.TYPE
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./DemoCanvas" for DemoCanvas

