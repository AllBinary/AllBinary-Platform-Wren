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
// package org.allbinary.game.input.motion.action

import "../../../../../../allbinary_java" for JObject, JException, JR

class NoCompleteMotionGestureInputEventListener is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoCompleteMotionGestureInputEventListener.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_NoCompleteMotionGestureInputEventListener() {
  }
    

    construct new() {
    super()
    initFields_NoCompleteMotionGestureInputEventListener()
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent) {
    }
    

    static getInstance() {
        return NoCompleteMotionGestureInputEventListener.instance
    }
}

import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent
import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface" for CompleteMotionGestureInputEventListenerInterface
import "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings

