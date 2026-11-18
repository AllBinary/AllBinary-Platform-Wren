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
import "../../../../../org/allbinary/thread/ARunnable" for ARunnable

class HighScoreRunnable is ARunnable {
  highScoresCanvas { _highScoresCanvas }
  highScoresCanvas=(value) { _highScoresCanvas = value }

  initFields_HighScoreRunnable() {
    _highScoresCanvas = null
        
  }
    

    construct new(highScoresCanvas) {
    super()
    initFields_HighScoreRunnable()
        _highScoresCanvas = highScoresCanvas
    }
    

    run() {
        var commonStrings = CommonStrings.getInstance()
        var logUtil = LogUtil.getInstance()
        var highScoresCanvas = _highScoresCanvas
        var jerror0 = Fiber.new {
            var isHTML = J2MEUtil.isHTML()
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
                highScoresCanvas.hasPainted = false
            }
            var stringMaker = StringMaker.new()
            var systemWrapper = ABSystemWrapper.getInstance()
            var currentTimeMillis = systemWrapper.currentTimeMillis()
            logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN)
            highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas)
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
            }
            stringMaker.delete(0, stringMaker.length())
            logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN)
            highScoresCanvas.executeUpdate()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
}

import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/logic/ABSystemWrapper" for ABSystemWrapper
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./HighScoresCanvas" for HighScoresCanvas

