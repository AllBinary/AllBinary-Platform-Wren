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
import "./Paintable" for Paintable

class PaintableComposite is Paintable {
  paintableArray { _paintableArray }
  paintableArray=(value) { _paintableArray = value }

  initFields_PaintableComposite() {
    _paintableArray = null
        
  }
    

    construct new(paintableArray) {
    super()
    initFields_PaintableComposite()
        _paintableArray = paintableArray
    }
    

    paint(graphics) {
        if (true) {
            var index = JR.i32(_paintableArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _paintableArray[index].paint(graphics)
            }
        }
    }
    

    paintThreed(graphics) {
        if (true) {
            var index = JR.i32(_paintableArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _paintableArray[index].paintThreed(graphics)
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./PaintableInterface" for PaintableInterface

