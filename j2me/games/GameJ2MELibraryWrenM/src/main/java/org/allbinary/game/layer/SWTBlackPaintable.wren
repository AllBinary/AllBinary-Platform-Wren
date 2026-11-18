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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class SWTBlackPaintable is Paintable {
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  BLACK { _BLACK }
  BLACK=(value) { _BLACK = value }

  initFields_SWTBlackPaintable() {
    _basicSetColorUtil = null
    _BLACK = null
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _BLACK = BasicColorFactory.getInstance().BLACK
  }

  construct new() {
    super()
    initFields_SWTBlackPaintable()
  }
    

    paint(graphics) {
        _basicSetColorUtil.setBasicColorP(graphics, _BLACK)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil

