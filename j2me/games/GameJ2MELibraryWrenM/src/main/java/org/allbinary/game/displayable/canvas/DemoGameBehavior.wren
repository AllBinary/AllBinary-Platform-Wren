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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class DemoGameBehavior is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DemoGameBehavior.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_DemoGameBehavior() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_DemoGameBehavior()
  }
    

    static getInstance() {
        return DemoGameBehavior.instance
    }
    

    init() {
    }
    

    pause(allBinaryGameCanvas) {
    }
    

    unPause(allBinaryGameCanvas) {
    }
    

    updateTouch(allBinaryGameCanvas) {
    }
    

    updateScreenButtonPaintable(allBinaryGameCanvas) {
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance())
    }
    

    setGameState(allBinaryGameCanvas) {
    }
    

    removeAllGameKeyInputListeners(allBinaryGameCanvas) {
    }
    

    updateEndGameProcessor(allBinaryGameCanvas) {
    }
    

    buildGame(allBinaryGameCanvas) {
    }
    

    run(allBinaryGameCanvas) {
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF(GameTypeFactory.getInstance().BOT.toString(), this, commonStrings.RUN)
    }
    

    setHighScore(abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast) {
    }
}

import "../../../../../org/allbinary/game/GameTypeFactory" for GameTypeFactory
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

