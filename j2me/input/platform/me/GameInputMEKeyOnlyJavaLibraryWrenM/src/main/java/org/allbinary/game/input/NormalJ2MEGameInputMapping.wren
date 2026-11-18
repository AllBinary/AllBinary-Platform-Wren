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

class NormalJ2MEGameInputMapping is J2MEGameInputMapping {

  initFields_NormalJ2MEGameInputMapping() {
  }

  construct new() {
    super()
    initFields_NormalJ2MEGameInputMapping()
  }
    

    getDefault() {
        return NormalJ2MEDefaultGameInputMapping.new().getInputMapping()
    }
}

import "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "./NormalJ2MEDefaultGameInputMapping" for NormalJ2MEDefaultGameInputMapping

