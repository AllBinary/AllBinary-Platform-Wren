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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "./J2MEGameInputMapping" for J2MEGameInputMapping

class MotionJ2MEGameInputMapping is J2MEGameInputMapping {

  initFields_MotionJ2MEGameInputMapping() {
  }

  construct new() {
    super()
    initFields_MotionJ2MEGameInputMapping()
  }
    

    getDefault() {
        return MotionJ2MEDefaultGameInputMapping.new().getInputMapping()
    }
}

import "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "./MotionJ2MEDefaultGameInputMapping" for MotionJ2MEDefaultGameInputMapping

