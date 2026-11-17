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
// package org.allbinary.string

import "../../../allbinary_java" for JObject, JException, JR

class CommonStateStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommonStateStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  CONTEXT { _CONTEXT }
  CONTEXT=(value) { _CONTEXT = value }
  FINISH { _FINISH }
  FINISH=(value) { _FINISH = value }
  CREATE { _CREATE }
  CREATE=(value) { _CREATE = value }
  START { _START }
  START=(value) { _START = value }
  RESTART { _RESTART }
  RESTART=(value) { _RESTART = value }
  RESUME { _RESUME }
  RESUME=(value) { _RESUME = value }
  PAUSE { _PAUSE }
  PAUSE=(value) { _PAUSE = value }
  STOP { _STOP }
  STOP=(value) { _STOP = value }
  DESTROY { _DESTROY }
  DESTROY=(value) { _DESTROY = value }
  BIND { _BIND }
  BIND=(value) { _BIND = value }
  ON_SAVE_INSTANCE_STATE { _ON_SAVE_INSTANCE_STATE }
  ON_SAVE_INSTANCE_STATE=(value) { _ON_SAVE_INSTANCE_STATE = value }
  ON_START_COMMAND { _ON_START_COMMAND }
  ON_START_COMMAND=(value) { _ON_START_COMMAND = value }

  initFields_CommonStateStrings() {
    _CONTEXT = null
    _FINISH = null
    _CREATE = null
    _START = null
    _RESTART = null
    _RESUME = null
    _PAUSE = null
    _STOP = null
    _DESTROY = null
    _BIND = null
    _ON_SAVE_INSTANCE_STATE = null
    _ON_START_COMMAND = null
        _CONTEXT = "Context: "
        _FINISH = "finish"
        _CREATE = "onCreate"
        _START = "onStart"
        _RESTART = "onRestart"
        _RESUME = "onResume"
        _PAUSE = "onPause"
        _STOP = "onStop"
        _DESTROY = "onDestroy"
        _BIND = "onBind"
        _ON_SAVE_INSTANCE_STATE = "onSaveInstanceState"
        _ON_START_COMMAND = "onStartCommand"
  }

  construct new() {
    super()
    initFields_CommonStateStrings()
  }
    

    static getInstance() {
        return CommonStateStrings.instance
    }
}


