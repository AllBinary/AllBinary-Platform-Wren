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
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class TouchButtonsPaintable is Paintable {
  foregroundBasicColor { _foregroundBasicColor }
  foregroundBasicColor=(value) { _foregroundBasicColor = value }
  foregroundColor { _foregroundColor }
  foregroundColor=(value) { _foregroundColor = value }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  touchButtonFactory { _touchButtonFactory }
  touchButtonFactory=(value) { _touchButtonFactory = value }

  initFields_TouchButtonsPaintable() {
    _foregroundBasicColor = null
    _foregroundColor = 0
    _basicSetColorUtil = null
    _touchButtonFactory = null
        
        
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _touchButtonFactory = TouchButtonFactory.getInstance()
  }
    

    construct new(basicColor) {
    super()
    initFields_TouchButtonsPaintable()
        _foregroundBasicColor = basicColor
        _foregroundColor = basicColor.intValue()
    }
    

    paint(graphics) {
        var list = _touchButtonFactory.getList()
        _basicSetColorUtil.setBasicColorP3(graphics, _foregroundBasicColor, _foregroundColor)
        var touchButton = null
        if (true) {
            var index = list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            touchButton = list.objectArray[index]
            touchButton.paint(graphics)
            }
        }
        if (true) {
            var index = list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            touchButton = list.objectArray[index]
            touchButton.paintHint(graphics)
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./TouchButtonFactory" for TouchButtonFactory
import "./TouchButton" for TouchButton

