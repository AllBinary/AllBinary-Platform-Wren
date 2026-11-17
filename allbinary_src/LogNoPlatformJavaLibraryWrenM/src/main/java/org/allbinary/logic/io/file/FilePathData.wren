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
// package org.allbinary.logic.io.file

import "../../../../../allbinary_java" for JObject, JException, JR

class FilePathData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FilePathData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SEPARATORCHAR { _SEPARATORCHAR }
  SEPARATORCHAR=(value) { _SEPARATORCHAR = value }
  PATH_START { _PATH_START }
  PATH_START=(value) { _PATH_START = value }

  initFields_FilePathData() {
    _SEPARATORCHAR = 0
    _PATH_START = null
        _SEPARATORCHAR = File.separatorChar
        _PATH_START = File.separator
  }
    

    static getInstance() {
        return FilePathData.instance
    }
    

    construct new() {
    super()
    initFields_FilePathData()
        if ((File.separatorChar == "\\".bytes[0])) {
            _PATH_START = File.separator + File.separator
        }
    }
}

import "../../../../../java/io/File" for File

