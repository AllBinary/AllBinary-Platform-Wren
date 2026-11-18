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
import "./TouchButtonResource" for TouchButtonResource

class TouchButtonStartResource is TouchButtonResource {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TouchButtonStartResource.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_TouchButtonStartResource() {
  }
    

    static getInstance() {
        return TouchButtonStartResource.instance
    }
    

    construct new() {
        super("/touch_button_start_64_by_64.png", "/touch_button_start_hint_64_by_64.png")
    }
}


