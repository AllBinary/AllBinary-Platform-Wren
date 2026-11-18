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
// package org.allbinary.game.part

import "../../../../allbinary_java" for JObject, JException, JR

class CountedLayersHudPaintable is JObject {
    static XXStringWidth {
    if (__XXStringWidth_set == null) {
      __XXStringWidth_set = true
      __XXStringWidth = 0
    }
    return __XXStringWidth
  }
  static XXStringWidth=(value) {
    __XXStringWidth_set = true
    __XXStringWidth = value
  }
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  partInterfaceArray { _partInterfaceArray }
  partInterfaceArray=(value) { _partInterfaceArray = value }
  countedTotalStringColor { _countedTotalStringColor }
  countedTotalStringColor=(value) { _countedTotalStringColor = value }
  countedPartsBorder { _countedPartsBorder }
  countedPartsBorder=(value) { _countedPartsBorder = value }
  startIndex { _startIndex }
  startIndex=(value) { _startIndex = value }
  dropSize { _dropSize }
  dropSize=(value) { _dropSize = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  height { _height }
  height=(value) { _height = value }

  initFields_CountedLayersHudPaintable() {
    _displayInfoSingleton = null
    _partInterfaceArray = null
    _countedTotalStringColor = 0
    _countedPartsBorder = 0
    _startIndex = 0
    _dropSize = 0
    _myFontProcessor = null
    _height = 0
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        
        
        
        
        
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _height = 0
  }
    

    construct new(partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder) {
    super()
    initFields_CountedLayersHudPaintable()
        _partInterfaceArray = partInterfaceArray
        _startIndex = startIndex
        _countedTotalStringColor = countedTotalStringColor
        _countedPartsBorder = countedPartsBorder
        _dropSize = dropSize
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _height = font.getHeight()
        if ((_dropSize > font.getHeight())) {
            _height = _dropSize
        }
        if ((CountedLayersHudPaintable.XXStringWidth == 0)) {
            var XXString = "XX"
            CountedLayersHudPaintable.XXStringWidth = font.stringWidth(XXString)
        }
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var lastWidth = _displayInfoSingleton.getLastWidth()
        var widthEdge = JR.i32(lastWidth - _dropSize)
        var size = _partInterfaceArray.count
        var count = 0
        var y = 0
        var countedLayerInterfaceFactory = null
        var pickedUpLayerInterfaceFactoryInterface = null
        var layerInterface = null
        var charArray = null
        if (true) {
            var index = _startIndex
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            countedLayerInterfaceFactory = _partInterfaceArray[index]
            if ((countedLayerInterfaceFactory.getTotal() > 0)) {
                pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
                layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer()
                y = JR.i32(40 + (JR.i32(count * _height)))
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP())
                layerInterface.paint(graphics)
                graphics.setColor(_countedTotalStringColor)
                countedLayerInterfaceFactory.paint(graphics)
                charArray = countedLayerInterfaceFactory.getTotalString()
                graphics.drawChars(charArray, 0, charArray.count, (widthEdge - countedLayerInterfaceFactory.getXOffset()), y, 0)
                count = JR.i32(count + 1)
            }
            }
        }
        if ((count > 0)) {
            graphics.setColor(_countedPartsBorder)
            graphics.drawRect(JR.i32(lastWidth - (JR.i32(CountedLayersHudPaintable.XXStringWidth + _dropSize))), 40, JR.i32(CountedLayersHudPaintable.XXStringWidth + _dropSize), JR.i32((JR.i32(count * _height)) + 3))
        }
    }
    

    paintThreed(graphics) {
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./PartInterface" for PartInterface
import "./CountedLayerInterfaceFactoryPart" for CountedLayerInterfaceFactoryPart

