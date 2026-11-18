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
// package org.allbinary.graphics.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "./LocationPaintable" for LocationPaintable

class StringLocationPaintable is LocationPaintable {
  value { _value }
  value=(value) { _value = value }

  initFields_StringLocationPaintable() {
    _value = null
        
  }
    

    construct new(value) {
    super()
    initFields_StringLocationPaintable()
        _value = value
    }
    

    paintXY(graphics, x, y) {
        graphics.drawString(_value, x, y, 0)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics

