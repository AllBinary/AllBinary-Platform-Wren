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
// package org.allbinary.input.motion.touch.action

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" for GameKeyCompleteMotionGestureInputEvent

class DownTouchInputToGameKeyEventAction is GameKeyCompleteMotionGestureInputEvent {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_DownTouchInputToGameKeyEventAction() {
  }
    

    static getInstance() {
        if ((DownTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT)) {
            DownTouchInputToGameKeyEventAction.instance = DownTouchInputToGameKeyEventAction.new()
        }
        return DownTouchInputToGameKeyEventAction.instance
    }
    

    construct new() {
        super("Down Action", TouchMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    }
}

import "../../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../../org/allbinary/logic/NullUtil" for NullUtil

