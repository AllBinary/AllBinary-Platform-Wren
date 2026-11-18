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

class SensorGameUpdateProcessor is JObject {
  inputSensor { _inputSensor }
  inputSensor=(value) { _inputSensor = value }

  initFields_SensorGameUpdateProcessor() {
    _inputSensor = null
        _inputSensor = null
  }

  construct new() {
    super()
    initFields_SensorGameUpdateProcessor()
  }
    

    setInputSensor(inputSensor) {
        _inputSensor = inputSensor
    }
    

    getInputSensor() {
        return _inputSensor
    }
    

    process(anyType) {
    }
    

    sendNotifications(anyType) {
    }
    

    isAnySensor() {
        if ((_inputSensor == NoAllBinarySensor.getInstance())) {
            return false
        } else {
            return true
        }
    }
    

    setNoSensors() {
        GyroSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance())
        AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance())
        this.setInputSensor(NoAllBinarySensor.getInstance())
    }
}

import "../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" for NoCompleteMotionGestureInputEventListener
import "../../../../org/allbinary/input/AllBinarySensor" for AllBinarySensor
import "../../../../org/allbinary/input/NoAllBinarySensor" for NoAllBinarySensor
import "../../../../org/allbinary/input/accelerometer/AccelerometerSensorFactory" for AccelerometerSensorFactory
import "./GyroSensorFactory" for GyroSensorFactory

