/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.ag.layer.hud.basic

import "../../../../../../../allbinary_java" for JObject, JException, JR

class NumberStringHudFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NULL_NUMBER_STRING_HUD { _NULL_NUMBER_STRING_HUD }
  NULL_NUMBER_STRING_HUD=(value) { _NULL_NUMBER_STRING_HUD = value }

  initFields_NumberStringHudFactory() {
    _NULL_NUMBER_STRING_HUD = null
        _NULL_NUMBER_STRING_HUD = this.createHud()
  }

  construct new() {
    super()
    initFields_NumberStringHudFactory()
  }
    

    static getInstance() {
        if ((NumberStringHudFactory.instance == NullUtil.getInstance())) {
            NumberStringHudFactory.instance = NumberStringHudFactory.new()
        }
        return NumberStringHudFactory.instance
    }
    

    createHud() {
        var jerror0 = Fiber.new {
            return NumberStringHud.new(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var logUtil = LogUtil.getInstance()
            var commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
    }
}

import "../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" for BasicHudFactory
import "../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./NumberStringHud" for NumberStringHud

