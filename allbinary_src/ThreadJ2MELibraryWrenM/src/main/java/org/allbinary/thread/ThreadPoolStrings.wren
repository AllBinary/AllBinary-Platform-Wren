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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR

class ThreadPoolStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ThreadPoolStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  ADD_TASK { _ADD_TASK }
  ADD_TASK=(value) { _ADD_TASK = value }
  START_TASK { _START_TASK }
  START_TASK=(value) { _START_TASK = value }
  COMPLETE_TASK { _COMPLETE_TASK }
  COMPLETE_TASK=(value) { _COMPLETE_TASK = value }

  initFields_ThreadPoolStrings() {
    _ADD_TASK = null
    _START_TASK = null
    _COMPLETE_TASK = null
        _ADD_TASK = "addTask"
        _START_TASK = "Started Task: "
        _COMPLETE_TASK = "Completed Task: "
  }

  construct new() {
    super()
    initFields_ThreadPoolStrings()
  }
    

    static getInstance() {
        return ThreadPoolStrings.instance
    }
}


