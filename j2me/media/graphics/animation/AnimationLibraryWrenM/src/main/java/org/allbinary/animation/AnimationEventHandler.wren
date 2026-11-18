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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler

class AnimationEventHandler is BasicEventHandler {
    static eventHandler {
    if (__eventHandler_set == null) {
      __eventHandler_set = true
      __eventHandler = AnimationEventHandler.new()
    }
    return __eventHandler
  }
  static eventHandler=(value) {
    __eventHandler_set = true
    __eventHandler = value
  }

  initFields_AnimationEventHandler() {
  }
    

    construct new() {
    super()
    initFields_AnimationEventHandler()
    }
    

    static getInstance() {
        return AnimationEventHandler.eventHandler
    }
}


