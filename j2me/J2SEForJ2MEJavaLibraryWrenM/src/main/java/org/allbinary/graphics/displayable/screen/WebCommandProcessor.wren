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

class WebCommandProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = WebCommandProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  aboutCommandProcessor { _aboutCommandProcessor }
  aboutCommandProcessor=(value) { _aboutCommandProcessor = value }
  list { _list }
  list=(value) { _list = value }

  initFields_WebCommandProcessor() {
    _logUtil = null
    _aboutCommandProcessor = null
    _list = null
        _logUtil = LogUtil.getInstance()
        _aboutCommandProcessor = AboutCommandProcessor.getInstance()
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_WebCommandProcessor()
  }
    

    static getInstance() {
        return WebCommandProcessor.instance
    }
    

    process(midletCommandListener, command, canvas) {
        var jerror0 = Fiber.new {
            if ((Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE))) {
                Desktop.getDesktop().browse(URI.new(_list.removeAt(0)))
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.PROCESS, e)
        }
    }
}

import "../../../../../java/awt/Desktop" for Desktop
import "../../../../../java/net/URI" for URI
import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./AboutCommandProcessor" for AboutCommandProcessor

