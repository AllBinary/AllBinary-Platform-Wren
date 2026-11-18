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

class DataOutputStreamFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DataOutputStreamFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_DataOutputStreamFactory() {
  }

  construct new() {
    super()
    initFields_DataOutputStreamFactory()
  }
    

    static getInstance() {
        return DataOutputStreamFactory.instance
    }
    

    getInstanceForAbFile(file) {
        var idFileOutputStream = AbFileOutputStream.createFromAbFile(file)
        var idOutData = AbDataOutputStream.new(idFileOutputStream)
        return idOutData
    }
    

    getInstance(filePath, fileName) {
        var fileStreamFactory = FileStreamFactory.getInstance()
        var fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName)
        var idOutData = AbDataOutputStream.new(fileOutputStream)
        return idOutData
    }
}

import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "./AbFileOutputStream" for AbFileOutputStream
import "./AbDataOutputStream" for AbDataOutputStream
import "./FileStreamFactory" for FileStreamFactory

