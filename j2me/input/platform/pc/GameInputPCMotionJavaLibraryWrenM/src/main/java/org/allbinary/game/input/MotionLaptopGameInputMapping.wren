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
import "./PCGameInputMapping" for PCGameInputMapping

class MotionLaptopGameInputMapping is PCGameInputMapping {

  initFields_MotionLaptopGameInputMapping() {
  }

  construct new() {
    super()
    initFields_MotionLaptopGameInputMapping()
  }
    

    getDefault() {
        return MotionLaptopDefaultGameInputMapping.new().getInputMapping()
    }
}

import "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "./MotionLaptopDefaultGameInputMapping" for MotionLaptopDefaultGameInputMapping

