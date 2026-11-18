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
// package org.allbinary.android.input.motion

import "../../../../../allbinary_java" for JObject, JException, JR

class AnalogControllerConfigurationFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AnalogControllerConfigurationFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SCALE_FACTOR { _SCALE_FACTOR }
  SCALE_FACTOR=(value) { _SCALE_FACTOR = value }
  SCALE_VALUE { _SCALE_VALUE }
  SCALE_VALUE=(value) { _SCALE_VALUE = value }
  available { _available }
  available=(value) { _available = value }
  analogControllerConfigurationEvent { _analogControllerConfigurationEvent }
  analogControllerConfigurationEvent=(value) { _analogControllerConfigurationEvent = value }

  initFields_AnalogControllerConfigurationFactory() {
    _SCALE_FACTOR = 0
    _SCALE_VALUE = 0
    _available = false
    _analogControllerConfigurationEvent = null
        _SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        _SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
        _available = false
        _analogControllerConfigurationEvent = AnalogControllerConfigurationEvent.new(this)
  }
    

    static getInstance() {
        return AnalogControllerConfigurationFactory.instance
    }
    

    construct new() {
    super()
    initFields_AnalogControllerConfigurationFactory()
    }
    

    isAvailable() {
        return _available
    }
    

    setAvailable(available) {
        _available = available
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(_analogControllerConfigurationEvent)
    }
}

import "../../../../../org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent" for AnalogControllerConfigurationEvent
import "../../../../../org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler" for AnalogControllerConfigurationEventHandler
import "../../../../../org/allbinary/logic/math/ScaleFactorFactory" for ScaleFactorFactory

