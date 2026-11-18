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

class ReleaseTouchInputToGameKeyEventAction is GameKeyCompleteMotionGestureInputEvent {
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
  NONE { _NONE }
  NONE=(value) { _NONE = value }

  initFields_ReleaseTouchInputToGameKeyEventAction() {
    _NONE = null
        _NONE = GameKeyFactory.getInstance().NONE
  }
    

    static getInstance() {
        if ((ReleaseTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT)) {
            ReleaseTouchInputToGameKeyEventAction.instance = ReleaseTouchInputToGameKeyEventAction.new()
        }
        return ReleaseTouchInputToGameKeyEventAction.instance
    }
    

    construct new() {
        super("Release Action", TouchMotionGestureFactory.getInstance().RELEASED, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
        initFields_ReleaseTouchInputToGameKeyEventAction()
        var jerror0 = Fiber.new {
            this.setGameKey(_NONE)
            this.setGameKeyEvent(GameKeyEventFactory.getInstance().getInstanceForInput(this, _NONE))
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
    

    update() {
    }
}

import "../../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

