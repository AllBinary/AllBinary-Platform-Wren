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

class GameCanvasPauseRunnable is GameRunnable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  allBinaryGameCanvas { _allBinaryGameCanvas }
  allBinaryGameCanvas=(value) { _allBinaryGameCanvas = value }

  initFields_GameCanvasPauseRunnable() {
    _logUtil = null
    _allBinaryGameCanvas = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(allBinaryGameCanvas) {
    super()
    initFields_GameCanvasPauseRunnable()
        _allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    run() {
    }
    

    processLoopSleep() {
        var jerror0 = Fiber.new {
            var features = Features.getInstance()
            var isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            if (isOpenGL) {
                _allBinaryGameCanvas.processSleep()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        }
    }
}

import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

