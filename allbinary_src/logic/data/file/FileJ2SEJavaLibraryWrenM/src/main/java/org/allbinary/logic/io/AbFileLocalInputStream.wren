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
import "./AbFileInputStream" for AbFileInputStream

class AbFileLocalInputStream is AbFileInputStream {

  initFields_AbFileLocalInputStream() {
  }
    

    construct new(file) {
        super(AbFileNativeUtil.get(file).getPath())
    }
}

import "../../../../java/io/FileNotFoundException" for FileNotFoundException
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" for AbFileNativeUtil

