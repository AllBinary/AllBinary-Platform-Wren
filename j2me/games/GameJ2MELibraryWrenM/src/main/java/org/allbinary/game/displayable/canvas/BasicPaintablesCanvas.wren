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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "./GameCommandCanvas" for GameCommandCanvas

class BasicPaintablesCanvas is GameCommandCanvas {
  paintableArray { _paintableArray }
  paintableArray=(value) { _paintableArray = value }
  colorFillPaintable { _colorFillPaintable }
  colorFillPaintable=(value) { _colorFillPaintable = value }

  initFields_BasicPaintablesCanvas() {
    _paintableArray = null
    _colorFillPaintable = null
        
        
  }
    

    construct new(cmdListener, name, allBinaryGameLayerManager, paintableArray) {
        super(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initFields_BasicPaintablesCanvas()
        _paintableArray = paintableArray
        _colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    }
    

    paint(graphics) {
        _colorFillPaintable.paint(graphics)
        graphics.setColor(this.foregroundColor)
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
        super.paint(graphics)
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/paint/ColorFillBasePaintable" for ColorFillBasePaintable
import "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" for ColorFillPaintableFactory
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

