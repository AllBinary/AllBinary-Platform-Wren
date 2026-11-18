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

class BasicLayerProcessor is JObject {
    static NULL_LAYER_PROCESSOR {
    if (__NULL_LAYER_PROCESSOR_set == null) {
      __NULL_LAYER_PROCESSOR_set = true
      __NULL_LAYER_PROCESSOR = BasicLayerProcessor.new()
    }
    return __NULL_LAYER_PROCESSOR
  }
  static NULL_LAYER_PROCESSOR=(value) {
    __NULL_LAYER_PROCESSOR_set = true
    __NULL_LAYER_PROCESSOR = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  list { _list }
  list=(value) { _list = value }

  initFields_BasicLayerProcessor() {
    _logUtil = null
    _list = null
        _logUtil = LogUtil.getInstance()
        _list = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_BasicLayerProcessor()
    }
    

    add(layerInterface) {
        if (!_list.contains(layerInterface)) {
            _list.add(layerInterface)
        }
    }
    

    process(allBinaryLayerManager) {
        Fiber.abort(JR.exception("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    getList() {
        return _list
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./AllBinaryLayer" for AllBinaryLayer
import "./AllBinaryLayerManager" for AllBinaryLayerManager

