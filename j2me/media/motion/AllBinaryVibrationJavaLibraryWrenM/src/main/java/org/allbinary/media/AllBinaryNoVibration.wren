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

class AllBinaryNoVibration is AllBinaryVibrationME {
    static NO_VIBRATION {
    if (__NO_VIBRATION_set == null) {
      __NO_VIBRATION_set = true
      __NO_VIBRATION = AllBinaryNoVibration.new()
    }
    return __NO_VIBRATION
  }
  static NO_VIBRATION=(value) {
    __NO_VIBRATION_set = true
    __NO_VIBRATION = value
  }

  initFields_AllBinaryNoVibration() {
  }

  construct new() {
    super()
    initFields_AllBinaryNoVibration()
  }
    

    vibrate(duration, type, volume) {
    }
}


