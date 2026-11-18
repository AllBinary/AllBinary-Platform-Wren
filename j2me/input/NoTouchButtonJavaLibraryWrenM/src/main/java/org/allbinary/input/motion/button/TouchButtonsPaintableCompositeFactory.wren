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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class TouchButtonsPaintableCompositeFactory is JObject {

  initFields_TouchButtonsPaintableCompositeFactory() {
  }

  construct new() {
    super()
    initFields_TouchButtonsPaintableCompositeFactory()
  }
    

    static getInstance(inputMappingInterface, basicColor) {
        return ProcessPaintable.new()
    }
}

import "../../../../../org/allbinary/game/input/mapping/InputMappingInterface" for InputMappingInterface
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/paint/ProcessPaintable" for ProcessPaintable

