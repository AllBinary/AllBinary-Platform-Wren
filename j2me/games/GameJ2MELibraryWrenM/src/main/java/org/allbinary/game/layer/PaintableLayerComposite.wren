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

class PaintableLayerComposite is Paintable {
  paintableArray { _paintableArray }
  paintableArray=(value) { _paintableArray = value }

  initFields_PaintableLayerComposite() {
    _paintableArray = null
        
  }
    

    construct new(paintableArray) {
    super()
    initFields_PaintableLayerComposite()
        _paintableArray = paintableArray
    }
    

    paint(graphics) {
        if (true) {
            var index = _paintableArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _paintableArray[index].paint(graphics)
            }
        }
    }
    

    paintThreed(graphics) {
        var paintableInterface = null
        if (true) {
            var index = _paintableArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            paintableInterface = _paintableArray[index]
            paintableInterface.paintThreed(graphics)
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../org/allbinary/layer/Layer" for Layer

