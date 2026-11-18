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

class AbFileNativeUtil is JObject {

  initFields_AbFileNativeUtil() {
  }

  construct new() {
    super()
    initFields_AbFileNativeUtil()
  }
    

    static get(file) {
        return file.getFile()
    }
}

import "../../../../../java/io/File" for File
import "./AbFile" for AbFile

