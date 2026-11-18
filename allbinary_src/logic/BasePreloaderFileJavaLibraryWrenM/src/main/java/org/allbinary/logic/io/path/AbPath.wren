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

class AbPath is JObject {
    static NETWORK_SEP { ":/" }
  commonSeps { _commonSeps }
  commonSeps=(value) { _commonSeps = value }
  abPathData { _abPathData }
  abPathData=(value) { _abPathData = value }
  abPathUtil { _abPathUtil }
  abPathUtil=(value) { _abPathUtil = value }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }
  schema { _schema }
  schema=(value) { _schema = value }
  path { _path }
  path=(value) { _path = value }
  nameP { _nameP }
  nameP=(value) { _nameP = value }
  hasSchemaP { _hasSchemaP }
  hasSchemaP=(value) { _hasSchemaP = value }
  numberOfSeps { _numberOfSeps }
  numberOfSeps=(value) { _numberOfSeps = value }

  initFields_AbPath() {
    _commonSeps = null
    _abPathData = null
    _abPathUtil = null
    _EMPTY_STRING = null
    _schema = null
    _path = null
    _nameP = null
    _hasSchemaP = false
    _numberOfSeps = 0
        _commonSeps = CommonSeps.getInstance()
        _abPathData = AbPathData.getInstance()
        _abPathUtil = PathUtil.getInstance()
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        _schema = _EMPTY_STRING
        _path = _EMPTY_STRING
        _nameP = _EMPTY_STRING
        _hasSchemaP = false
        _numberOfSeps = 0
  }
    

    static createAbPath() {
        var jerror0 = Fiber.new {
            var EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
            return AbPath.new(EMPTY_STRING, EMPTY_STRING)
        }.try()
        if (jerror0 != null) {
            var ex = jerror0
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
    }
    

    construct new(aPath, name) {
    super()
    initFields_AbPath()
        var stringValidationUtil = StringValidationUtil.getInstance()
        if (!stringValidationUtil.isEmpty(aPath)) {
            _schema = this.getSchema(aPath)
            _nameP = name
            _path = _abPathUtil.adjustEnd(_abPathUtil.adjust(this.getPathFromPath(aPath)))
        } else {
            this.init()
            if (!stringValidationUtil.isEmpty(name)) {
                _nameP = name
            }
        }
    }
    

    init() {
        _schema = _EMPTY_STRING
        this.setPath(_abPathData.SEPARATOR)
        _nameP = _EMPTY_STRING
    }
    

    getSchema(aPath) {
        var beginIndex = JR.indexOf(aPath, _commonSeps.COLON)
        if ((beginIndex >= 0)) {
            _hasSchemaP = true
            return JR.substring(aPath, 0, beginIndex)
        }
        _hasSchemaP = false
        return _EMPTY_STRING
    }
    

    hasSchema() {
        return _hasSchemaP
    }
    

    getPathFromPath(aPath) {
        var filePathData = FilePathData.getInstance()
        var tempPath = aPath
        if (!this.hasSchema()) {
            tempPath = _abPathUtil.adjustStart(tempPath)
        } else {
            var beginIndex = JR.indexOf(tempPath, _commonSeps.COLON)
            if ((beginIndex >= 0)) {
                beginIndex = JR.i32(beginIndex + 1)
                while (((JR.charAt(tempPath, beginIndex) == _abPathData.SEPARATORCHAR) || (JR.charAt(tempPath, beginIndex) == filePathData.SEPARATORCHAR))) {
                    beginIndex = JR.i32(beginIndex + 1)
                    _numberOfSeps = JR.i32(_numberOfSeps + 1)
                    if ((_numberOfSeps > 2)) {
                        Fiber.abort(JR.exception("Exception", "Should Not Have More Than Two Seps"))
                    }
                }
                tempPath = JR.substring(tempPath, beginIndex, JR.length(tempPath))
            }
        }
        return tempPath
    }
    

    setName(name) {
        _nameP = name
    }
    

    getName() {
        return _nameP
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        if (this.hasSchema()) {
            stringBuffer.append(_schema)
            stringBuffer.append(AbPath.NETWORK_SEP)
        }
        stringBuffer.append(this.getPath())
        stringBuffer.append(_nameP)
        return stringBuffer.toString()
    }
    

    toFileSystemString() {
        if (this.hasSchema()) {
            var filePathData = FilePathData.getInstance()
            var stringBuffer = StringMaker.new()
            stringBuffer.append(_schema)
            stringBuffer.append(_commonSeps.COLON)
            stringBuffer.append(filePathData.PATH_START)
            stringBuffer.append(FilePathUtil.adjust(this.getPath()))
            stringBuffer.append(_nameP)
            return stringBuffer.toString()
        } else {
            return JR.str(FilePathUtil.adjust(this.getPath())) + _nameP
        }
    }
    

    getPath() {
        return _path
    }
    

    setPath(path) {
        _path = path
    }
}

import "../../../../../org/allbinary/logic/io/file/FilePathData" for FilePathData
import "../../../../../org/allbinary/logic/io/file/FilePathUtil" for FilePathUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./AbPathData" for AbPathData
import "./PathUtil" for PathUtil

