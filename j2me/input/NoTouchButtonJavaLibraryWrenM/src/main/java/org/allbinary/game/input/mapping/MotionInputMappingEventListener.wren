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
// package org.allbinary.game.input.mapping

import "../../../../../allbinary_java" for JObject, JException, JR

class MotionInputMappingEventListener is JObject {

  initFields_MotionInputMappingEventListener() {
  }

  construct new() {
    super()
    initFields_MotionInputMappingEventListener()
  }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onInputMappingEvent(inputMappingEvent) {
    }
}

import "../../../../../org/allbinary/game/input/mapping/event/InputMappingEvent" for InputMappingEvent
import "../../../../../org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface" for InputMappingEventListenerInterface
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings

