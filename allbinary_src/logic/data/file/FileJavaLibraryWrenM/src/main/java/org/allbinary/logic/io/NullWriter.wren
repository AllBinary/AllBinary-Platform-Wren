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
import "../../../../java/io/Writer" for Writer

class NullWriter is Writer {
    static NULL_WRITER {
    if (__NULL_WRITER_set == null) {
      __NULL_WRITER_set = true
      __NULL_WRITER = NullWriter.new()
    }
    return __NULL_WRITER
  }
  static NULL_WRITER=(value) {
    __NULL_WRITER_set = true
    __NULL_WRITER = value
  }

  initFields_NullWriter() {
  }

  construct new() {
    super()
    initFields_NullWriter()
  }
    

    write(jp1) {
    }

    write_jo1(c) {
    }
    

    write(jp1, jp2, jp3) {
    }

    write_jo1(cbuf, off, len) {
    }
    

    write_jo2(str) {
    }
    

    write_jo2(str, off, len) {
    }
    

    flush() {
    }
    

    close() {
    }
}

import "../../../../java/io/IOException" for IOException

