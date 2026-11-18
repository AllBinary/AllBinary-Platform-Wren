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
// package org.allbinary.media

import "../../../allbinary_java" for JObject, JException, JR
import "./AllBinaryVibrationME" for AllBinaryVibrationME

class AllBinaryVibration is AllBinaryVibrationME {
    static VIBRATION {
    if (__VIBRATION_set == null) {
      __VIBRATION_set = true
      __VIBRATION = AllBinaryNoVibration.NO_VIBRATION
    }
    return __VIBRATION
  }
  static VIBRATION=(value) {
    __VIBRATION_set = true
    __VIBRATION = value
  }

  initFields_AllBinaryVibration() {
  }
    

    construct new() {
    super()
    initFields_AllBinaryVibration()
    }
    

    static getInstance() {
        return AllBinaryVibration.VIBRATION
    }
    

    static init() {
        if ((GameConfigurationCentral.getInstance().VIBRATION.getValue().intValue() == 0)) {
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION
        } else {
            AllBinaryVibration.VIBRATION = AllBinaryVibration.new()
        }
    }
    

    vibrate(duration, type, volume) {
    }
}

import "../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "./AllBinaryNoVibration" for AllBinaryNoVibration

