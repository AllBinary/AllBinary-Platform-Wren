/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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

//J2MEForJ2ME
class AbFileSystem is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AbFileSystem.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_AbFileSystem() {
    _logUtil = null
    _commonStrings = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
  }

  construct new() {
    super()
    initFields_AbFileSystem()
  }
    

    static getInstance() {
        return AbFileSystem.instance
    }
    

    isDirectoryOrFile(path) {
        return false
    }
    

    isDirectory(path) {
        return false
    }
    

    getFilesAsStringArrayForPath(currentDirPath) {
        return StringUtil.getInstance().getArrayInstance()
    }
    

    readAsString(fileName) {
        var bytes = List.filled(1000000, 0)
        return this.readAsString(fileName, bytes)
    }
    

    readAsString(fileName, bytes) {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    close(closeable) {
        var jerror0 = Fiber.new {
            if ((closeable != null)) {
                var inputStream = (closeable)
                inputStream.close()
            }
            return true
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.CLOSE, e)
            return false
        }
    }
}

import "../../../../../java/io/InputStream" for InputStream
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

