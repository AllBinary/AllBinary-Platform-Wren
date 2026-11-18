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
// package org.allbinary.graphics.displayable.screen

import "../../../../../allbinary_java" for JObject, JException, JR

class AboutPaintableFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AboutPaintableFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  paintableArray { _paintableArray }
  paintableArray=(value) { _paintableArray = value }

  initFields_AboutPaintableFactory() {
    _paintableArray = null
        _paintableArray = [NullPaintable.getInstance()]
  }
    

    static getInstance() {
        return AboutPaintableFactory.instance
    }
    

    construct new() {
    super()
    initFields_AboutPaintableFactory()
        var INFO = ["Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"]
        var DEVELOPERS = ["Developed By:", "Travis Berthelot"]
        _paintableArray = AboutPaintable.getInstance(INFO, DEVELOPERS).getPaintableArrayInstance()
    }
}

import "../../../../../org/allbinary/game/paint/AboutPaintable" for AboutPaintable
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

