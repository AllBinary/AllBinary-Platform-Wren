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
import "./AllBinaryOrientationSensor" for AllBinaryOrientationSensor

class NoGyroSensor is AllBinaryOrientationSensor {

  initFields_NoGyroSensor() {
  }
    

    construct new() {
    super()
    initFields_NoGyroSensor()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
    }
    

    getOrientation() {
        return Orientation.NONE
    }
    

    onSensorChange() {
    }
}

import "../../../../org/allbinary/input/AllBinarySensorListener" for AllBinarySensorListener
import "../../../../org/allbinary/logic/math/Orientation" for Orientation

