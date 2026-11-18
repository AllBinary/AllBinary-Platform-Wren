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

class OrientationToGameKeyEvent is JObject {
  allBinaryGyroSensor { _allBinaryGyroSensor }
  allBinaryGyroSensor=(value) { _allBinaryGyroSensor = value }
  MIN { _MIN }
  MIN=(value) { _MIN = value }

  initFields_OrientationToGameKeyEvent() {
    _allBinaryGyroSensor = null
    _MIN = 0
        _allBinaryGyroSensor = null
        _MIN = 15
  }
    

    construct new() {
    super()
    initFields_OrientationToGameKeyEvent()
        if (Features.getInstance().isFeature(SensorFeatureFactory.getInstance().NO_ORIENTATION)) {
            _allBinaryGyroSensor = NoGyroSensor.new()
        } else {
            Fiber.abort(JR.exception("Exception", "Not Such Feature"))
        }
    }
    

    setAllBinaryGyroSensor(allBinaryGyroSensor) {
        _allBinaryGyroSensor = allBinaryGyroSensor
    }
    

    getAllBinaryGyroSensor() {
        return _allBinaryGyroSensor
    }
    

    process() {
    }
    

    updateGameKeyEvents(orientation, yaw, pitch, roll) {
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" for SensorFeatureFactory
import "../../../../org/allbinary/logic/math/Orientation" for Orientation
import "./AllBinaryOrientationSensor" for AllBinaryOrientationSensor
import "./NoGyroSensor" for NoGyroSensor

