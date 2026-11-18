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
// package org.allbinary.logic.io

import "../../../../allbinary_java" for JObject, JException, JR

class NullCloseable is JObject {
    static NULL_CLOSEABLE {
    if (__NULL_CLOSEABLE_set == null) {
      __NULL_CLOSEABLE_set = true
      __NULL_CLOSEABLE = NullCloseable.new()
    }
    return __NULL_CLOSEABLE
  }
  static NULL_CLOSEABLE=(value) {
    __NULL_CLOSEABLE_set = true
    __NULL_CLOSEABLE = value
  }

  initFields_NullCloseable() {
  }

  construct new() {
    super()
    initFields_NullCloseable()
  }
    

    close() {
    }
}

import "../../../../java/io/Closeable" for Closeable
import "../../../../java/io/IOException" for IOException

