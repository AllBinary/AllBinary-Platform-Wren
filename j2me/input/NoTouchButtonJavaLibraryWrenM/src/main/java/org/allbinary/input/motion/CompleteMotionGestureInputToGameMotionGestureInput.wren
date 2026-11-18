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
// package org.allbinary.input.motion

import "../../../../allbinary_java" for JObject, JException, JR

class CompleteMotionGestureInputToGameMotionGestureInput is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_CompleteMotionGestureInputToGameMotionGestureInput() {
    _commonStrings = null
        _commonStrings = CommonStrings.getInstance()
  }

  construct new() {
    super()
    initFields_CompleteMotionGestureInputToGameMotionGestureInput()
  }
    

    static getInstance() {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    }
    

    init() {
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", this, _commonStrings.INIT)
    }
}

import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

