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
// package org.allbinary.logic.system.os

import "../../../../../allbinary_java" for JObject, JException, JR

class GenericOperatingSystem is JObject {
  osName { _osName }
  osName=(value) { _osName = value }
  osArch { _osArch }
  osArch=(value) { _osArch = value }
  osVersion { _osVersion }
  osVersion=(value) { _osVersion = value }
  characterSet { _characterSet }
  characterSet=(value) { _characterSet = value }
  scalable { _scalable }
  scalable=(value) { _scalable = value }

  initFields_GenericOperatingSystem() {
    _osName = null
    _osArch = null
    _osVersion = null
    _characterSet = null
    _scalable = false
        _osName = null
        _osArch = null
        _osVersion = null
        _characterSet = CharacterSet.new()
        _scalable = false
  }
    

    construct new() {
    super()
    initFields_GenericOperatingSystem()
        var systemProperties = SystemProperties.getInstance()
        var stringValidationUtil = StringValidationUtil.getInstance()
        var EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        if (stringValidationUtil.isEmpty(systemProperties.getName())) {
            _osName = EMPTY_STRING
        } else {
            _osName = systemProperties.getName()
        }
        if (stringValidationUtil.isEmpty(systemProperties.getArch())) {
            _osArch = EMPTY_STRING
        } else {
            _osArch = systemProperties.getArch()
        }
        if (stringValidationUtil.isEmpty(systemProperties.getVersion())) {
            _osVersion = EMPTY_STRING
        } else {
            _osVersion = systemProperties.getVersion()
        }
    }
    

    getName() {
        return _osName
    }
    

    getVersion() {
        return _osVersion
    }
    

    getArch() {
        return _osArch
    }
    

    getCharacterSet() {
        return _characterSet
    }
    

    isOverScan() {
        return false
    }
    

    getOverScanXPercent() {
        return 100
    }
    

    getOverScanYPercent() {
        return 100
    }
    

    isScalable() {
        return _scalable
    }
    

    isAutoHide() {
        return false
    }
    

    toString() {
        var NEW_LINE = CommonSeps.getInstance().NEW_LINE
        var osBuffer = StringMaker.new()
        osBuffer.append("Operating System Info: \n")
        osBuffer.append(this.getName())
        osBuffer.append(NEW_LINE)
        osBuffer.append(this.getArch())
        osBuffer.append(NEW_LINE)
        osBuffer.append(this.getVersion())
        osBuffer.append(NEW_LINE)
        osBuffer.append(StringUtil.getInstance().toString(this.getCharacterSet()))
        osBuffer.append(NEW_LINE)
        return osBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/java/character/CharacterSet" for CharacterSet
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./OperatingSystemInterface" for OperatingSystemInterface
import "./SystemProperties" for SystemProperties

