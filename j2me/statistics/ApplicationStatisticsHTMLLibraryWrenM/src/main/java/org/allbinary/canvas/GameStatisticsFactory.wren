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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR
import "./BaseGameStatistics" for BaseGameStatistics

//ActualPlatform
class GameStatisticsFactory is BaseGameStatistics {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameStatisticsFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  stringBuffer { _stringBuffer }
  stringBuffer=(value) { _stringBuffer = value }

  initFields_GameStatisticsFactory() {
    _stringBuffer = null
        _stringBuffer = StringMaker.new()
  }

  construct new() {
    super()
    initFields_GameStatisticsFactory()
  }
    

    static getInstance() {
        return GameStatisticsFactory.instance
    }
    

    add(string) {
        if ((_stringBuffer.length() > 12000)) {
            _stringBuffer.delete(0, _stringBuffer.length())
            _stringBuffer.append("Old Stats Cleared")
        }
        _stringBuffer.append(string)
    }
    

    toString() {
        return StringMaker.new().append(super.toString()).append(_stringBuffer.toString()).toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker

