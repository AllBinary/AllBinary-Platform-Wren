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
// package org.allbinary.input.accelerometer

import "../../../../allbinary_java" for JObject, JException, JR

class AccelerometerSensorFactory is JObject {
    static allBinaryAccelerometerSensor {
    if (__allBinaryAccelerometerSensor_set == null) {
      __allBinaryAccelerometerSensor_set = true
      __allBinaryAccelerometerSensor = null
    }
    return __allBinaryAccelerometerSensor
  }
  static allBinaryAccelerometerSensor=(value) {
    __allBinaryAccelerometerSensor_set = true
    __allBinaryAccelerometerSensor = value
  }

  initFields_AccelerometerSensorFactory() {
  }

  construct new() {
    super()
    initFields_AccelerometerSensorFactory()
  }
    

    static init() {
        var features = Features.getInstance()
        var sensorFeatureFactory = SensorFeatureFactory.getInstance()
        if (features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            Fiber.abort(JR.exception("Exception", "No Orientation Sensors"))
        } else if (features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            Fiber.abort(JR.exception("Exception", "No Simulation Sensors"))
        } else if (features.isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = NoAccelerometerSensor.new()
        } else {
            Fiber.abort(JR.exception("Exception", "Not Such SensorFeature"))
        }
    }
    

    static getInstance() {
        return AccelerometerSensorFactory.allBinaryAccelerometerSensor
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" for SensorFeatureFactory
import "../../../../org/allbinary/input/gyro/AllBinaryOrientationSensor" for AllBinaryOrientationSensor
import "./NoAccelerometerSensor" for NoAccelerometerSensor

