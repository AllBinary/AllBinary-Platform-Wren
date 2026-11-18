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
import "./SensorGameUpdateProcessor" for SensorGameUpdateProcessor

class SingleSensorGameUpdateProcessor is SensorGameUpdateProcessor {
  accelerometerSensorUpdateProcessor { _accelerometerSensorUpdateProcessor }
  accelerometerSensorUpdateProcessor=(value) { _accelerometerSensorUpdateProcessor = value }
  gyroSensorUpdateProcessor { _gyroSensorUpdateProcessor }
  gyroSensorUpdateProcessor=(value) { _gyroSensorUpdateProcessor = value }

  initFields_SingleSensorGameUpdateProcessor() {
    _accelerometerSensorUpdateProcessor = null
    _gyroSensorUpdateProcessor = null
        _accelerometerSensorUpdateProcessor = AccelerometerSensorUpdateProcessor.new()
        _gyroSensorUpdateProcessor = GyroSensorUpdateProcessor.new()
  }

  construct new() {
    super()
    initFields_SingleSensorGameUpdateProcessor()
  }
    

    process(anyType) {
        this.setNoSensors()
    }
    

    sendNotifications(anyType) {
    }
}

import "../../../../org/allbinary/canvas/Processor" for Processor
import "./AccelerometerSensorUpdateProcessor" for AccelerometerSensorUpdateProcessor
import "./GyroSensorUpdateProcessor" for GyroSensorUpdateProcessor

