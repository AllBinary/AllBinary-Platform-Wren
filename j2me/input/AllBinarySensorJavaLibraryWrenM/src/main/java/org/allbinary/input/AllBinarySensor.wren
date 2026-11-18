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
// package org.allbinary.input

import "../../../allbinary_java" for JObject, JException, JR

class AllBinarySensor is JObject {
    static NULL_ALLBINARY_SENSOR {
    if (__NULL_ALLBINARY_SENSOR_set == null) {
      __NULL_ALLBINARY_SENSOR_set = true
      __NULL_ALLBINARY_SENSOR = AllBinarySensor.new()
    }
    return __NULL_ALLBINARY_SENSOR
  }
  static NULL_ALLBINARY_SENSOR=(value) {
    __NULL_ALLBINARY_SENSOR_set = true
    __NULL_ALLBINARY_SENSOR = value
  }
    static max {
    if (__max_set == null) {
      __max_set = true
      __max = 100
    }
    return __max
  }
  static max=(value) {
    __max_set = true
    __max = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_AllBinarySensor() {
    _logUtil = null
    _commonStrings = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
  }
    

    construct new() {
    super()
    initFields_AllBinarySensor()
    }
    

    init() {
    }
    

    update() {
    }
    

    static setMax(max) {
        AllBinarySensor.max = max
    }
    

    static getMax() {
        return AllBinarySensor.max
    }
    

    getId() {
        return AllBinarySensor.getMax()
    }
    

    shutdown() {
        _logUtil.putF(_commonStrings.START, this, "shutdown")
    }
    

    onSensorChange() {
        ForcedLogUtil.log(_commonStrings.NOT_IMPLEMENTED, this)
    }
}

import "../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AllBinarySensorListener" for AllBinarySensorListener

