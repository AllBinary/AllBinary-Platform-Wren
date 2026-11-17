// Generated Code Do Not Modify
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR

class ThreadObjectUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ThreadObjectUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NULL_PRIORITY_RUNNABLE { _NULL_PRIORITY_RUNNABLE }
  NULL_PRIORITY_RUNNABLE=(value) { _NULL_PRIORITY_RUNNABLE = value }

  initFields_ThreadObjectUtil() {
    _NULL_PRIORITY_RUNNABLE = null
        _NULL_PRIORITY_RUNNABLE = NullPriorityRunnable.new()
  }

  construct new() {
    super()
    initFields_ThreadObjectUtil()
  }
    

    static getInstance() {
        return ThreadObjectUtil.instance
    }
    

    notifyObject(anyType) {
        anyType.notify()
    }
    

    waitObject(anyType) {
        anyType.wait()
    }
    

    waitObjectFor(anyType, delay) {
        TsUtil.getInstance().waitFor(anyType, delay)
    }
    

    processThread(runnable) {
        var thread = Thread.new(runnable)
        thread.start()
    }
}

import "../../../org/allbinary/TsUtil" for TsUtil
import "../../../java/lang/Thread" for Thread
import "../../../java/lang/Runnable" for Runnable
import "./NullPriorityRunnable" for NullPriorityRunnable
import "./PriorityRunnable" for PriorityRunnable

