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
import "../../../../java/io/FileInputStream" for FileInputStream

class AbFileInputStream is FileInputStream {

  initFields_AbFileInputStream() {
  }
    

    construct new(name) {
        super(name)
    }
    

    static createFromAbFile(file) {
        return AbFileInputStream.new(AbFileNativeUtil.get(file).getPath())
    }
    

    static createFromFile(file) {
        return AbFileInputStream.new(file.getPath())
    }
}

import "../../../../java/io/File" for File
import "../../../../java/io/FileNotFoundException" for FileNotFoundException
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" for AbFileNativeUtil

