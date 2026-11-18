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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR
import "./LayerManagerLoggingBase" for LayerManagerLoggingBase

class LayerManagerLogging is LayerManagerLoggingBase {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LayerManagerLogging.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
    static removeFailed {
    if (__removeFailed_set == null) {
      __removeFailed_set = true
      __removeFailed = false
    }
    return __removeFailed
  }
  static removeFailed=(value) {
    __removeFailed_set = true
    __removeFailed = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  stringBuilder { _stringBuilder }
  stringBuilder=(value) { _stringBuilder = value }
  APPEND { _APPEND }
  APPEND=(value) { _APPEND = value }
  APPEND_ { _APPEND_ }
  APPEND_=(value) { _APPEND_ = value }
  u_AT_ { _u_AT_ }
  u_AT_=(value) { _u_AT_ = value }
  ATTEMPT_REMOVE_ { _ATTEMPT_REMOVE_ }
  ATTEMPT_REMOVE_=(value) { _ATTEMPT_REMOVE_ = value }
  REMOVE_ { _REMOVE_ }
  REMOVE_=(value) { _REMOVE_ = value }
  REMOVE { _REMOVE }
  REMOVE=(value) { _REMOVE = value }
  DID_NOT_REMOVE { _DID_NOT_REMOVE }
  DID_NOT_REMOVE=(value) { _DID_NOT_REMOVE = value }
  CLEAR { _CLEAR }
  CLEAR=(value) { _CLEAR = value }

  initFields_LayerManagerLogging() {
    _logUtil = null
    _stringBuilder = null
    _APPEND = null
    _APPEND_ = null
    _u_AT_ = null
    _ATTEMPT_REMOVE_ = null
    _REMOVE_ = null
    _REMOVE = null
    _DID_NOT_REMOVE = null
    _CLEAR = null
        _logUtil = LogUtil.getInstance()
        _stringBuilder = StringMaker.new()
        _APPEND = "append"
        _APPEND_ = " append: "
        _u_AT_ = " at: "
        _ATTEMPT_REMOVE_ = " Remove Attempt: "
        _REMOVE_ = " Remove: "
        _REMOVE = "remove"
        _DID_NOT_REMOVE = " Did not remove: "
        _CLEAR = " Clear List"
  }

  construct new() {
    super()
    initFields_LayerManagerLogging()
  }
    

    static getInstance() {
        return LayerManagerLogging.instance
    }
    

    append(layerInterface) {
        _stringBuilder.delete(0, _stringBuilder.length())
        _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_APPEND_).append(layerInterface.getName()).toString(), this, _APPEND)
    }
    

    appendAt(layerInterface, index) {
        _stringBuilder.delete(0, _stringBuilder.length())
        _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_APPEND_).append(layerInterface.getName()).append(_u_AT_).appendint(index).toString(), this, _APPEND)
    }
    

    remove(layerInterface) {
        if ((layerInterface == null)) {
            _stringBuilder.delete(0, _stringBuilder.length())
            _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_ATTEMPT_REMOVE_).append(StringUtil.getInstance().toString(layerInterface)).toString(), this, _REMOVE)
        } else {
            _stringBuilder.delete(0, _stringBuilder.length())
            _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_ATTEMPT_REMOVE_).append(layerInterface.getName()).toString(), this, _REMOVE)
        }
    }
    

    removeResult(layerManager, layerInterface, result) {
        if ((layerInterface == null)) {
            _stringBuilder.delete(0, _stringBuilder.length())
            _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_REMOVE_).append(StringUtil.getInstance().toString(layerInterface)).toString(), this, _REMOVE)
        } else if (result) {
            if (LayerManagerLogging.removeFailed) {
                _stringBuilder.delete(0, _stringBuilder.length())
                _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_REMOVE_).append(layerInterface.getName()).toString(), this, _REMOVE)
            }
        } else {
            _stringBuilder.delete(0, _stringBuilder.length())
            _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_DID_NOT_REMOVE).append(layerInterface.getName()).toString(), this, _REMOVE)
            LayerManagerLogging.removeFailed = true
        }
    }
    

    log(layerManager) {
        _stringBuilder.delete(0, _stringBuilder.length())
        var size = layerManager.getSize()
        var commonSeps = CommonSeps.getInstance()
        _stringBuilder.append(Integer.toHexString(TsUtil.getInstance().hashCode(layerManager))).append(commonSeps.COLON_SEP)
        _stringBuilder.appendint(size).append(commonSeps.COLON_SEP)
        var allBinaryLayer = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            allBinaryLayer = (layerManager.getLayerAt(index))
            _stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA)
            }
        }
        _logUtil.putF(_stringBuilder.toString(), this, _REMOVE)
    }
    

    clear() {
        _stringBuilder.delete(0, _stringBuilder.length())
        _logUtil.putF(_stringBuilder.appendint(JR.i32(TsUtil.getInstance().hashCode(this))).append(_CLEAR).toString(), this, _CLEAR)
    }
}

import "../../../org/allbinary/TsUtil" for TsUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../java/lang/Integer" for Integer
import "./AllBinaryLayer" for AllBinaryLayer
import "./LayerManager" for LayerManager

