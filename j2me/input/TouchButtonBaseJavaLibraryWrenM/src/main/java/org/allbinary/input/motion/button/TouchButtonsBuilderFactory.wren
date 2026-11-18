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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class TouchButtonsBuilderFactory is JObject {
    static NO_TOUCH_BUTTON_BUILDER_FACTORY {
    if (__NO_TOUCH_BUTTON_BUILDER_FACTORY_set == null) {
      __NO_TOUCH_BUTTON_BUILDER_FACTORY_set = true
      __NO_TOUCH_BUTTON_BUILDER_FACTORY = TouchButtonsBuilderFactory.new()
    }
    return __NO_TOUCH_BUTTON_BUILDER_FACTORY
  }
  static NO_TOUCH_BUTTON_BUILDER_FACTORY=(value) {
    __NO_TOUCH_BUTTON_BUILDER_FACTORY_set = true
    __NO_TOUCH_BUTTON_BUILDER_FACTORY = value
  }

  initFields_TouchButtonsBuilderFactory() {
  }

  construct new() {
    super()
    initFields_TouchButtonsBuilderFactory()
  }
    

    getInstance() {
        return NoButtonsTouchInputFactory.getInstance()
    }
}

import "./NoButtonsTouchInputFactory" for NoButtonsTouchInputFactory
import "./BaseTouchInput" for BaseTouchInput

