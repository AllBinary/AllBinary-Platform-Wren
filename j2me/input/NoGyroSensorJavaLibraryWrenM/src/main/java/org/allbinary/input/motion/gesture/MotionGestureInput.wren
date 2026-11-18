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
// package org.allbinary.input.motion.gesture

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/input/Input" for Input

class MotionGestureInput is Input {

  initFields_MotionGestureInput() {
  }
    

    construct new(id, name) {
        super(id, name)
        var inputFactory = InputFactory.getInstance()
        inputFactory.add(this.getId(), this)
    }
}

import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory

