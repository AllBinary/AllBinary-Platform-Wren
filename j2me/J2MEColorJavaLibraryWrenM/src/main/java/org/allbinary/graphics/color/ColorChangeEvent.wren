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
// package org.allbinary.graphics.color

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class ColorChangeEvent is AllBinaryEventObject {
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }

  initFields_ColorChangeEvent() {
    _basicColor = null
        _basicColor = BasicColorFactory.getInstance().WHITE
  }
    

    construct new(anyType) {
        super(anyType)
        initFields_ColorChangeEvent()
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
}

import "./BasicColorFactory" for BasicColorFactory
import "./BasicColor" for BasicColor

