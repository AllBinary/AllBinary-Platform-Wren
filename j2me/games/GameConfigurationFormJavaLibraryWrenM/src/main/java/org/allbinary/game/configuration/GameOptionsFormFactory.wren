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
// package org.allbinary.game.configuration

import "../../../../allbinary_java" for JObject, JException, JR

class GameOptionsFormFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameOptionsFormFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_GameOptionsFormFactory() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_GameOptionsFormFactory()
    }
    

    static getInstance() {
        return GameOptionsFormFactory.instance
    }
    

    init(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        var jerror0 = Fiber.new {
            return GameOptionsForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)
            return CommandForm.getNullCommandForm()
        }
    }
}

import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/displayable/screen/CommandForm" for CommandForm
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./GameOptionsForm" for GameOptionsForm

