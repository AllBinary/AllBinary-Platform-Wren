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

class GyroSensorFactory is JObject {
    static allBinaryGyroSensor {
    if (__allBinaryGyroSensor_set == null) {
      __allBinaryGyroSensor_set = true
      __allBinaryGyroSensor = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR
    }
    return __allBinaryGyroSensor
  }
  static allBinaryGyroSensor=(value) {
    __allBinaryGyroSensor_set = true
    __allBinaryGyroSensor = value
  }

  initFields_GyroSensorFactory() {
  }

  construct new() {
    super()
    initFields_GyroSensorFactory()
  }
    

    static init() {
        GyroSensorFactory.allBinaryGyroSensor = NoGyroSensor.new()
    }
    

    static getInstance() {
        return GyroSensorFactory.allBinaryGyroSensor
    }
}

import "./AllBinaryOrientationSensor" for AllBinaryOrientationSensor
import "./NoGyroSensor" for NoGyroSensor

