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

class FileStreamFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NullUtil.getInstance().NULL_OBJECT
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_FileStreamFactory() {
  }
    

    static getInstance() {
        if ((FileStreamFactory.SINGLETON == NullUtil.getInstance().NULL_OBJECT)) {
            FileStreamFactory.SINGLETON = FileStreamFactory.new()
        }
        return FileStreamFactory.SINGLETON
    }
    

    construct new() {
    super()
    initFields_FileStreamFactory()
    }
    

    getFileInputStreamInstance(path, fileName) {
        var FILEABPATH = AbPath.new(path, fileName)
        var file = AbFile.createAbFileFromAbPath(FILEABPATH)
        return AbFileInputStream.createFromAbFile(file)
    }
    

    getFileOutputStreamInstance(path, fileName) {
        var FILEABPATH = AbPath.new(path, fileName)
        var file = AbFile.createAbFileFromAbPath(FILEABPATH)
        if (file.exists()) {
            file.delete()
            file.createNewFile()
        }
        return AbFileOutputStream.createFromAbFile(file)
    }
    

    delete(path, fileName) {
        var FILEABPATH = AbPath.new(path, fileName)
        var file = AbFile.createAbFileFromAbPath(FILEABPATH)
        file.delete()
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "../../../../org/allbinary/logic/io/path/AbPath" for AbPath
import "./AbFileInputStream" for AbFileInputStream
import "./AbFileOutputStream" for AbFileOutputStream

