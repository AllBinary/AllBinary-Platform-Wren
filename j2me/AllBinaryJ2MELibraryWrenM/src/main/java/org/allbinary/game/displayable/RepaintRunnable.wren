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
// package org.allbinary.game.displayable

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/thread/ARunnable" for ARunnable

class RepaintRunnable is ARunnable {
  canvas { _canvas }
  canvas=(value) { _canvas = value }

  initFields_RepaintRunnable() {
    _canvas = null
        
  }
    

    construct new(canvas) {
    super()
    initFields_RepaintRunnable()
        _canvas = canvas
    }
    

    run() {
        var jerror0 = Fiber.new {
            _canvas.repaint()
            DisplayInfoSingleton.getInstance().process()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            var logUtil = LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

