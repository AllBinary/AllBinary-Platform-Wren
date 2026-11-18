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

//J2SEForJ2ME
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
        var file = File.new(path)
        return (file.isDirectory() || file.isFile())
    }
    

    isDirectory(path) {
        return File.new(path).isDirectory()
    }
    

    getFilesAsStringArrayForPath(currentDirPath) {
        var file = File.new(currentDirPath)
        if (file.exists()) {
            return file.list()
        } else {
            return StringUtil.getInstance().getArrayInstance()
        }
    }
    

    readAsString(fileName) {
        var bytes = List.filled(1000000, 0)
        return this.readAsString(fileName, bytes)
    }
    

    readAsString(fileName, bytes) {
        var closeable = NullUtil.getInstance().NULL_OBJECT
        var jerror0 = Fiber.new {
            var idFile = FileInputStream.new(fileName)
            closeable = idFile
            var size = idFile.read(bytes)
            if ((size > 0)) {
                return JR.fromChars(bytes, 0, size)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, "readAsString", e)
        }
        if (true) {
            this.close(closeable)
        }
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    close(closeable) {
        var jerror1 = Fiber.new {
            if ((closeable != null)) {
                var inputStream = (closeable)
                inputStream.close()
            }
            return true
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.CLOSE, e)
            return false
        }
    }
    

    static main(args) {
        var isDirectory = AbFileSystem.getInstance().isDirectory("c:")
        System.print("isDirectory: " + JR.str(isDirectory))
    }
}

import "../../../../../java/io/File" for File
import "../../../../../java/io/FileInputStream" for FileInputStream
import "../../../../../java/io/InputStream" for InputStream
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/System" for JSystem

