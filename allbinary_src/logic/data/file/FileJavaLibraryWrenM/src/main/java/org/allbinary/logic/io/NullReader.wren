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
import "../../../../java/io/Reader" for Reader

class NullReader is Reader {
    static NULL_READER {
    if (__NULL_READER_set == null) {
      __NULL_READER_set = true
      __NULL_READER = NullReader.new()
    }
    return __NULL_READER
  }
  static NULL_READER=(value) {
    __NULL_READER_set = true
    __NULL_READER = value
  }

  initFields_NullReader() {
  }

  construct new() {
    super()
    initFields_NullReader()
  }
    

    read() {
        return -1
    }
    

    read(cbuf, off, len) {
        return -1
    }
    

    ready() {
        return false
    }
    

    skip(n) {
        return 0
    }
    

    close() {
    }
}

import "../../../../java/io/IOException" for IOException

