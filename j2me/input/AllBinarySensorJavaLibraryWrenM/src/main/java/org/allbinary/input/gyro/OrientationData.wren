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
// package org.allbinary.input.gyro

import "../../../../allbinary_java" for JObject, JException, JR

class OrientationData is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = OrientationData.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  ORIENTATION_SENSOR_INPUT { _ORIENTATION_SENSOR_INPUT }
  ORIENTATION_SENSOR_INPUT=(value) { _ORIENTATION_SENSOR_INPUT = value }
  ORIENTATION_TYPE { _ORIENTATION_TYPE }
  ORIENTATION_TYPE=(value) { _ORIENTATION_TYPE = value }

  initFields_OrientationData() {
    _ORIENTATION_SENSOR_INPUT = null
    _ORIENTATION_TYPE = null
        _ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
        _ORIENTATION_TYPE = "Orientation Type"
  }
    

    construct new() {
    super()
    initFields_OrientationData()
    }
    

    static getInstance() {
        return OrientationData.SINGLETON
    }
}


