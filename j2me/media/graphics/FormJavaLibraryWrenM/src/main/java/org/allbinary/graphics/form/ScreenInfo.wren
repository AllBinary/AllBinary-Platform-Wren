// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR

class ScreenInfo is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ScreenInfo.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SMALL_WIDTH { _SMALL_WIDTH }
  SMALL_WIDTH=(value) { _SMALL_WIDTH = value }
  SMALL_HEIGHT { _SMALL_HEIGHT }
  SMALL_HEIGHT=(value) { _SMALL_HEIGHT = value }
  MEDIUM_WIDTH { _MEDIUM_WIDTH }
  MEDIUM_WIDTH=(value) { _MEDIUM_WIDTH = value }
  MEDIUM_HEIGHT { _MEDIUM_HEIGHT }
  MEDIUM_HEIGHT=(value) { _MEDIUM_HEIGHT = value }

  initFields_ScreenInfo() {
    _SMALL_WIDTH = 0
    _SMALL_HEIGHT = 0
    _MEDIUM_WIDTH = 0
    _MEDIUM_HEIGHT = 0
        _SMALL_WIDTH = 320
        _SMALL_HEIGHT = 240
        _MEDIUM_WIDTH = 800
        _MEDIUM_HEIGHT = 600
  }

  construct new() {
    super()
    initFields_ScreenInfo()
  }
    

    static getInstance() {
        return ScreenInfo.instance
    }
}


