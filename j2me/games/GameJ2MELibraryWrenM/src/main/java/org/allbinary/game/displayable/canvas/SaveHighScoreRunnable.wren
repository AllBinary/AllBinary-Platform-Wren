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

class SaveHighScoreRunnable is JObject {
  progressCanvas { _progressCanvas }
  progressCanvas=(value) { _progressCanvas = value }
  isLast { _isLast }
  isLast=(value) { _isLast = value }
  textBox { _textBox }
  textBox=(value) { _textBox = value }

  initFields_SaveHighScoreRunnable() {
    _progressCanvas = null
    _isLast = false
    _textBox = null
        _progressCanvas = ProgressCanvasFactory.getInstance()
        
        
  }
    

    construct new(isLast, textBox) {
    super()
    initFields_SaveHighScoreRunnable()
        _isLast = isLast
        _textBox = textBox
    }
    

    run() {
        var logUtil = LogUtil.getInstance()
        var jerror0 = Fiber.new {
            if (_isLast) {
                _textBox.submit()
            } else {
                _textBox.saveHighScore()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, "run", e)
            _progressCanvas.end()
        }
    }
}

import "../../../../../org/allbinary/game/score/displayable/HighScoreTextBox" for HighScoreTextBox
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/Runnable" for Runnable

