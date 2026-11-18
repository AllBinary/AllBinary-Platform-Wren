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
// package org.allbinary.content

import "../../../allbinary_java" for JObject, JException, JR

class CommandUriAction is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommandUriAction.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_CommandUriAction() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_CommandUriAction()
  }
    

    static getInstance() {
        return CommandUriAction.instance
    }
    

    add(command, url) {
    }
    

    process(command) {
    }
}

import "../../../javax/microedition/lcdui/Command" for Command
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil

