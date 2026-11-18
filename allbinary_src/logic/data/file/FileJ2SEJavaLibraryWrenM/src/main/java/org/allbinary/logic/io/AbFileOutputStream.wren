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
import "../../../../java/io/FileOutputStream" for FileOutputStream

class AbFileOutputStream is FileOutputStream {

  initFields_AbFileOutputStream() {
  }
    

    static createFromAbFile(file) {
        return AbFileOutputStream.new(file.getPath(), false)
    }
    

    static createFromAbFileAppend(file, append) {
        return AbFileOutputStream.new(file.getPath(), append)
    }
    

    static createFromFilePath(name) {
        return AbFileOutputStream.new(name, false)
    }
    

    static createFromFilePathAppend(name, append) {
        return AbFileOutputStream.new(name, append)
    }
    

    construct new(name, append) {
        super(name, append)
    }
}

import "../../../../java/io/FileNotFoundException" for FileNotFoundException
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile

