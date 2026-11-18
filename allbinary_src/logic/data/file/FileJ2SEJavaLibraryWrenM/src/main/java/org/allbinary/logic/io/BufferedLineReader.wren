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
// package org.allbinary.logic.io

import "../../../../allbinary_java" for JObject, JException, JR

class BufferedLineReader is JObject {
  tmpIn { _tmpIn }
  tmpIn=(value) { _tmpIn = value }

  initFields_BufferedLineReader() {
    _tmpIn = null
        
  }
    

    construct new(file) {
    super()
    initFields_BufferedLineReader()
        _tmpIn = BufferedReader.new(FileReader.new(AbFileNativeUtil.get(file)))
    }
    

    readUpToLines(readAheadIndex) {
    }
    

    readLine() {
        return _tmpIn.readLine()
    }
    

    ready() {
        return _tmpIn.ready()
    }
    

    getSize() {
        return 0
    }
    

    getCurrent() {
        return 0
    }
}

import "../../../../java/io/BufferedReader" for BufferedReader
import "../../../../java/io/FileReader" for FileReader
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" for AbFileNativeUtil

