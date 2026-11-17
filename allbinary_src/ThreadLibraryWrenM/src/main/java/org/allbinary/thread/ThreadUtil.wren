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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR

class ThreadUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ThreadUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  JOIN { _JOIN }
  JOIN=(value) { _JOIN = value }

  initFields_ThreadUtil() {
    _logUtil = null
    _JOIN = null
        _logUtil = LogUtil.getInstance()
        _JOIN = "join"
  }

  construct new() {
    super()
    initFields_ThreadUtil()
  }
    

    static getInstance() {
        return ThreadUtil.instance
    }
    

    isRunning(thread) {
        if (((thread != null) && thread.isAlive())) {
            return true
        } else {
            return false
        }
    }
    

    join(thread) {
        if (ThreadUtil.getInstance().isRunning(thread)) {
            _logUtil.putF("Waiting for Thread To Join/End", this, _JOIN)
            thread.join()
        }
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../java/lang/Thread" for Thread

