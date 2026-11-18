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

class BufferedIOUtil is JObject {

  initFields_BufferedIOUtil() {
  }

  construct new() {
    super()
    initFields_BufferedIOUtil()
  }
    

    static copy(backupFile, backupFileBak) {
        var line = StringUtil.getInstance().EMPTY_STRING
        var tmpOut = BufferedWriter.new(FileWriter.new(AbFileNativeUtil.get(backupFileBak)))
        var tmpIn = BufferedReader.new(FileReader.new(AbFileNativeUtil.get(backupFile)))
        while (tmpIn.ready()) {
            line = tmpIn.readLine()
            tmpOut.write(line, 0, JR.length(line))
            tmpOut.newLine()
        }
        tmpOut.flush()
    }
}

import "../../../../java/io/BufferedReader" for BufferedReader
import "../../../../java/io/BufferedWriter" for BufferedWriter
import "../../../../java/io/FileReader" for FileReader
import "../../../../java/io/FileWriter" for FileWriter
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" for AbFileNativeUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

