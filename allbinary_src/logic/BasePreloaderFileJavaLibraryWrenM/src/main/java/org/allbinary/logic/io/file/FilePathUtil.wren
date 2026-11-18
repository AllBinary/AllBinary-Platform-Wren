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

//Used to correct user input for paths
class FilePathUtil is JObject {

  initFields_FilePathUtil() {
  }
    

    construct new() {
    super()
    initFields_FilePathUtil()
    }
    

    static adjust(path) {
        var abPathData = AbPathData.getInstance()
        var stringValidationUtil = StringValidationUtil.getInstance()
        var filePathData = FilePathData.getInstance()
        if (stringValidationUtil.isEmpty(path)) {
            return filePathData.PATH_START
        }
        path = JR.replace(path, abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR)
        return path
    }
}

import "../../../../../org/allbinary/logic/io/path/AbPathData" for AbPathData
import "../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "./FilePathData" for FilePathData

