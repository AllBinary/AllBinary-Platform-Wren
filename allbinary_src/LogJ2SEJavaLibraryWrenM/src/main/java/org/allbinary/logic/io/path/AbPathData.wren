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

class AbPathData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AbPathData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EXTENSION_SEP { _EXTENSION_SEP }
  EXTENSION_SEP=(value) { _EXTENSION_SEP = value }
  SEPARATORCHAR { _SEPARATORCHAR }
  SEPARATORCHAR=(value) { _SEPARATORCHAR = value }
  SEPARATOR { _SEPARATOR }
  SEPARATOR=(value) { _SEPARATOR = value }

  initFields_AbPathData() {
    _EXTENSION_SEP = null
    _SEPARATORCHAR = 0
    _SEPARATOR = null
        _EXTENSION_SEP = CommonSeps.getInstance().PERIOD
        _SEPARATORCHAR = "/".bytes[0]
        _SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
  }
    

    static getInstance() {
        return AbPathData.instance
    }
    

    construct new() {
    super()
    initFields_AbPathData()
    }
    

    getExtensionIndex(filePath) {
        var indexOfFileExtensionDelmiter = JR.lastIndexOf(filePath, _EXTENSION_SEP)
        var indexOfLatDelimiter = JR.lastIndexOf(filePath, _SEPARATORCHAR)
        if ((indexOfFileExtensionDelmiter < 0)) {
            return -1
        }
        if ((indexOfFileExtensionDelmiter < indexOfLatDelimiter)) {
            return -1
        }
        return indexOfFileExtensionDelmiter
    }
    

    getExtensionWithDot(filePath) {
        var indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath)
        var extension = StringUtil.getInstance().EMPTY_STRING
        if ((indexOfFileExtensionDelmiter >= 0)) {
            extension = JR.substring(filePath, indexOfFileExtensionDelmiter)
        }
        return extension
    }
    

    getExtension(filePath) {
        var indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath)
        var extension = StringUtil.getInstance().EMPTY_STRING
        if ((indexOfFileExtensionDelmiter >= 0)) {
            extension = JR.substring(filePath, JR.i32(indexOfFileExtensionDelmiter + 1))
        }
        return extension
    }
    

    getNameFromPath(path) {
        var endIndex = JR.lastIndexOf(path, _SEPARATORCHAR)
        if ((endIndex < 0)) {
            endIndex = JR.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR)
        }
        if ((endIndex < 0)) {
            return path
        }
        if ((JR.length(path) == JR.i32(endIndex + 1))) {
            var categoryName = JR.substring(path, 0, endIndex)
            return this.getNameFromPath(categoryName)
        } else {
            var categoryName = JR.substring(path, JR.i32(endIndex + 1))
            return categoryName
        }
    }
    

    removeNameFromPath(path) {
        var endIndex = JR.lastIndexOf(path, _SEPARATORCHAR)
        if ((endIndex < 0)) {
            endIndex = JR.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR)
        }
        if ((endIndex < 0)) {
            return StringUtil.getInstance().EMPTY_STRING
        }
        if ((JR.length(path) == JR.i32(endIndex + 1))) {
            return this.removeNameFromPath(JR.substring(path, 0, JR.i32(endIndex - 1)))
        } else {
            var pathWithoutName = JR.substring(path, 0, endIndex)
            return pathWithoutName
        }
    }
}

import "../../../../../org/allbinary/logic/io/file/FilePathData" for FilePathData
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps

