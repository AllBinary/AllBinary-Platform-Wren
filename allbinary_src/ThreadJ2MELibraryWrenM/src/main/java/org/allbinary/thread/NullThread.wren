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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR

class NullThread is JObject {
    static NULL_THREAD {
    if (__NULL_THREAD_set == null) {
      __NULL_THREAD_set = true
      __NULL_THREAD = Thread.new()
    }
    return __NULL_THREAD
  }
  static NULL_THREAD=(value) {
    __NULL_THREAD_set = true
    __NULL_THREAD = value
  }

  initFields_NullThread() {
  }

  construct new() {
    super()
    initFields_NullThread()
  }
}

import "../../../java/lang/Thread" for Thread

