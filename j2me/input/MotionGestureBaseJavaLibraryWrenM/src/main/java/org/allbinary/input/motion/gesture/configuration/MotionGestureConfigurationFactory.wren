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
// package org.allbinary.input.motion.gesture.configuration

import "../../../../../../allbinary_java" for JObject, JException, JR

class MotionGestureConfigurationFactory is JObject {
    static config {
    if (__config_set == null) {
      __config_set = true
      __config = MotionGestureConfiguration.new()
    }
    return __config
  }
  static config=(value) {
    __config_set = true
    __config = value
  }

  initFields_MotionGestureConfigurationFactory() {
  }
    

    construct new() {
    super()
    initFields_MotionGestureConfigurationFactory()
    }
    

    static getInstance() {
        return MotionGestureConfigurationFactory.config
    }
}

import "./MotionGestureConfiguration" for MotionGestureConfiguration

