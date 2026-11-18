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
import "../../../../java/io/OutputStream" for OutputStream

class NullOutputStream is OutputStream {
    static NULL_OUTPUT_STREAM {
    if (__NULL_OUTPUT_STREAM_set == null) {
      __NULL_OUTPUT_STREAM_set = true
      __NULL_OUTPUT_STREAM = NullOutputStream.new()
    }
    return __NULL_OUTPUT_STREAM
  }
  static NULL_OUTPUT_STREAM=(value) {
    __NULL_OUTPUT_STREAM_set = true
    __NULL_OUTPUT_STREAM = value
  }

  initFields_NullOutputStream() {
  }

  construct new() {
    super()
    initFields_NullOutputStream()
  }
    

    write(b) {
    }
    

    write(b, off, len) {
    }
    

    close() {
    }
}

import "../../../../java/io/IOException" for IOException

