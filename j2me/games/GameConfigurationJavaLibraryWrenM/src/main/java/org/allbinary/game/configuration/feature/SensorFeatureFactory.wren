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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class SensorFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SensorFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NO_ORIENTATION { _NO_ORIENTATION }
  NO_ORIENTATION=(value) { _NO_ORIENTATION = value }
  ORIENTATION_SENSORS { _ORIENTATION_SENSORS }
  ORIENTATION_SENSORS=(value) { _ORIENTATION_SENSORS = value }
  SIMULATED_ORIENTATION_SENSORS { _SIMULATED_ORIENTATION_SENSORS }
  SIMULATED_ORIENTATION_SENSORS=(value) { _SIMULATED_ORIENTATION_SENSORS = value }
  YAW { _YAW }
  YAW=(value) { _YAW = value }
  YAW_MINUS_RIGHT_PLUS_LEFT { _YAW_MINUS_RIGHT_PLUS_LEFT }
  YAW_MINUS_RIGHT_PLUS_LEFT=(value) { _YAW_MINUS_RIGHT_PLUS_LEFT = value }
  YAW_MINUS_LEFT_PLUS_RIGHT { _YAW_MINUS_LEFT_PLUS_RIGHT }
  YAW_MINUS_LEFT_PLUS_RIGHT=(value) { _YAW_MINUS_LEFT_PLUS_RIGHT = value }
  PITCH { _PITCH }
  PITCH=(value) { _PITCH = value }
  ROLL { _ROLL }
  ROLL=(value) { _ROLL = value }

  initFields_SensorFeatureFactory() {
    _NO_ORIENTATION = null
    _ORIENTATION_SENSORS = null
    _SIMULATED_ORIENTATION_SENSORS = null
    _YAW = null
    _YAW_MINUS_RIGHT_PLUS_LEFT = null
    _YAW_MINUS_LEFT_PLUS_RIGHT = null
    _PITCH = null
    _ROLL = null
        _NO_ORIENTATION = SensorFeature.new("No Orientation")
        _ORIENTATION_SENSORS = SensorFeature.new("Orientation Sensors")
        _SIMULATED_ORIENTATION_SENSORS = SensorFeature.new("Simulated Orientation Sensors")
        _YAW = SensorFeature.new("Yaw")
        _YAW_MINUS_RIGHT_PLUS_LEFT = SensorFeature.new("Yaw -Right +Left")
        _YAW_MINUS_LEFT_PLUS_RIGHT = SensorFeature.new("Yaw -Left +Right ")
        _PITCH = SensorFeature.new("Pitch")
        _ROLL = SensorFeature.new("Roll")
  }
    

    static getInstance() {
        return SensorFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_SensorFeatureFactory()
    }
}

import "./SensorFeature" for SensorFeature

