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
// package org.allbinary.device

import "../../../allbinary_java" for JObject, JException, JR

class NullGL10 is JObject {
    static NULL_GL10 {
    if (__NULL_GL10_set == null) {
      __NULL_GL10_set = true
      __NULL_GL10 = NullGL10.new()
    }
    return __NULL_GL10
  }
  static NULL_GL10=(value) {
    __NULL_GL10_set = true
    __NULL_GL10 = value
  }

  initFields_NullGL10() {
  }

  construct new() {
    super()
    initFields_NullGL10()
  }
}

import "../../../javax/microedition/khronos/opengles/GL10" for GL10

