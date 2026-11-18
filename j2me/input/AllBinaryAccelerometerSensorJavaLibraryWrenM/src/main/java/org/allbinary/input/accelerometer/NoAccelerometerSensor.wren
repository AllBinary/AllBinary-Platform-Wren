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
import "../../../../org/allbinary/input/gyro/AllBinaryOrientationSensor" for AllBinaryOrientationSensor

class NoAccelerometerSensor is AllBinaryOrientationSensor {

  initFields_NoAccelerometerSensor() {
  }
    

    construct new() {
    super()
    initFields_NoAccelerometerSensor()
    }
    

    getOrientation() {
        return Orientation.NONE
    }
    

    onSensorChange() {
    }
}

import "../../../../org/allbinary/logic/math/Orientation" for Orientation

