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
// package org.allbinary.logic.io.path

import "../../../../../allbinary_java" for JObject, JException, JR

//Used to correct user input for paths
class PathUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PathUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  abPathData { _abPathData }
  abPathData=(value) { _abPathData = value }
  filePathData { _filePathData }
  filePathData=(value) { _filePathData = value }

  initFields_PathUtil() {
    _abPathData = null
    _filePathData = null
        _abPathData = AbPathData.getInstance()
        _filePathData = FilePathData.getInstance()
  }
    

    static getInstance() {
        return PathUtil.instance
    }
    

    construct new() {
    super()
    initFields_PathUtil()
    }
    

    getExtensionWithAbFilePath(abFilePath) {
        return _abPathData.getExtension(abFilePath.toString())
    }
    

    getExtensionWithAbPath(abPath) {
        return _abPathData.getExtension(abPath.toString())
    }
    

    getWithoutExtensionWithAbFilePath(abFilePath) {
        return this.getWithoutExtension(abFilePath.toString())
    }
    

    getWithoutExtensionWithAbPath(abPath) {
        return this.getWithoutExtension(abPath.toString())
    }
    

    getWithoutExtension(filePath) {
        var indexOfFileExtensionDelmiter = _abPathData.getExtensionIndex(filePath)
        var pathWithoutExtension = filePath
        if ((indexOfFileExtensionDelmiter >= 0)) {
            pathWithoutExtension = JR.substring(filePath, 0, indexOfFileExtensionDelmiter)
        }
        return pathWithoutExtension
    }
    

    isValid(path) {
        if (this.isValidStart(path)) {
            if (this.isValidEnd(path)) {
                return true
            }
        }
        return false
    }
    

    isValidStart(path) {
        if (((JR.charAt(path, 0) == _abPathData.SEPARATORCHAR) || (JR.charAt(path, 0) == ".".bytes[0]))) {
            return true
        } else {
            return false
        }
    }
    

    isValidEnd(path) {
        var stringValidationUtil = StringValidationUtil.getInstance()
        if (stringValidationUtil.isEmpty(path)) {
            return false
        }
        if ((JR.charAt(path, JR.i32(JR.length(path) - 1)) == _abPathData.SEPARATORCHAR)) {
            return true
        } else {
            return false
        }
    }
    

    adjustStart(path) {
        if (!this.isValidStart(path)) {
            path = JR.str(_abPathData.SEPARATOR) + path
        }
        return path
    }
    

    adjustEnd(path) {
        if (!this.isValidEnd(path)) {
            path = path + JR.str(_abPathData.SEPARATOR)
        }
        return path
    }
    

    adjust(path) {
        var stringValidationUtil = StringValidationUtil.getInstance()
        if (stringValidationUtil.isEmpty(path)) {
            return _abPathData.SEPARATOR
        }
        if ((JR.indexOf(path, "\\") >= 0)) {
            path = JR.replace(path, "\\".bytes[0], _abPathData.SEPARATORCHAR)
        }
        return path
    }
    

    removeNameFromPath(path) {
        var endIndex = JR.lastIndexOf(path, _abPathData.SEPARATOR)
        if ((endIndex < 0)) {
            endIndex = JR.lastIndexOf(path, _filePathData.SEPARATORCHAR)
        }
        if ((endIndex < 0)) {
            return AbPath.createAbPath()
        }
        if ((JR.length(path) == JR.i32(endIndex + 1))) {
            return this.removeNameFromPath(JR.substring(path, 0, JR.i32(endIndex - 1)))
        } else {
            var pathWithoutName = JR.substring(path, 0, endIndex)
            return AbPath.new(pathWithoutName, StringUtil.getInstance().EMPTY_STRING)
        }
    }
}

import "../../../../../org/allbinary/logic/io/file/FilePathData" for FilePathData
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "./AbPathData" for AbPathData
import "./AbFilePath" for AbFilePath
import "./AbPath" for AbPath

