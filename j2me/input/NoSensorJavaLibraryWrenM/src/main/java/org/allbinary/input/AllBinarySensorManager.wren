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

class AllBinarySensorManager is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
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
  ORIENTATION_SENSOR_INPUT { _ORIENTATION_SENSOR_INPUT }
  ORIENTATION_SENSOR_INPUT=(value) { _ORIENTATION_SENSOR_INPUT = value }
  ORIENTATION_TYPE { _ORIENTATION_TYPE }
  ORIENTATION_TYPE=(value) { _ORIENTATION_TYPE = value }
  list { _list }
  list=(value) { _list = value }

  initFields_AllBinarySensorManager() {
    _logUtil = null
    _commonStrings = null
    _ORIENTATION_SENSOR_INPUT = null
    _ORIENTATION_TYPE = null
    _list = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
        _ORIENTATION_TYPE = "Orientation Type"
        _list = BasicArrayListD.new()
  }
    

    static getInstance() {
        if ((AllBinarySensorManager.instance == NullUtil.getInstance().NULL_OBJECT)) {
            AllBinarySensorManager.instance = AllBinarySensorManager.new()
        }
        return AllBinarySensorManager.instance
    }
    

    construct new() {
    super()
    initFields_AllBinarySensorManager()
        var jerror0 = Fiber.new {
            GyroSensorFactory.init()
            AccelerometerSensorFactory.init()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.CONSTRUCTOR, e)
        }
    }
    

    init() {
    }
    

    getSensorNamesList() {
        return _list
    }
    

    shutdown() {
    }
}

import "../../../org/allbinary/input/accelerometer/AccelerometerSensorFactory" for AccelerometerSensorFactory
import "../../../org/allbinary/input/gyro/GyroSensorFactory" for GyroSensorFactory
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

