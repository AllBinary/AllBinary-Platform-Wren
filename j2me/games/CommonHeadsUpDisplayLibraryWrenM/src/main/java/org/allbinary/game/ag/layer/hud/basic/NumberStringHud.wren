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
// package org.allbinary.game.ag.layer.hud.basic

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/game/graphics/hud/BasicHud" for BasicHud

class NumberStringHud is BasicHud {
  primitiveLongUtil { _primitiveLongUtil }
  primitiveLongUtil=(value) { _primitiveLongUtil = value }
  prependString { _prependString }
  prependString=(value) { _prependString = value }
  PREPEND_STRING { _PREPEND_STRING }
  PREPEND_STRING=(value) { _PREPEND_STRING = value }
  value { _value }
  value=(value) { _value = value }
  max { _max }
  max=(value) { _max = value }
  offset { _offset }
  offset=(value) { _offset = value }
  valueString { _valueString }
  valueString=(value) { _valueString = value }
  valueTotalDigits { _valueTotalDigits }
  valueTotalDigits=(value) { _valueTotalDigits = value }

  initFields_NumberStringHud() {
    _primitiveLongUtil = null
    _prependString = null
    _PREPEND_STRING = null
    _value = 0
    _max = 0
    _offset = 0
    _valueString = null
    _valueTotalDigits = 0
        
        
        
        
        
        _offset = 0
        
        _valueTotalDigits = 0
  }
    

    construct new(prependString, max, location, direction, bufferZone, basicColor) {
        super(location, direction, bufferZone, basicColor)
        initFields_NumberStringHud()
        _prependString = prependString
        _PREPEND_STRING = JR.toCharArray(prependString)
        _valueString = PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0]
        _primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(JR.i32(max + 1))
        _max = max
        _value = 0
        if ((direction == 0)) {
            Fiber.abort(JR.exception("RuntimeException", BasicHudFactory.getInstance().DIRECTION_EXCEPTION))
        }
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _offset = (font.stringWidth(_prependString) + MyFontProcessor.defaultCharWidth(font))
        super.updateMeasurement(graphics)
    }
    

    get() {
        return _value
    }
    

    add(value) {
        this.set(JR.i32(_value + value))
    }
    

    set(value) {
        _value = value
        if ((_value > _max)) {
            _value = 0
        }
        _valueString = _primitiveLongUtil.getCharArray(_value)
        _valueTotalDigits = _primitiveLongUtil.getCurrentTotalDigits()
    }
    

    reduce(value) {
        this.set(JR.i32(_value - value))
    }
    

    paint(graphics) {
        super.paintDX(graphics, _PREPEND_STRING, 0, _PREPEND_STRING.count, _valueString, 0, _valueTotalDigits, _offset)
    }
    

    paintXY(graphics, x, y) {
        this.myFontProcessor.process(graphics)
        var charArray = _PREPEND_STRING
        var len = _PREPEND_STRING.count
        var charArray2 = _valueString
        var len2 = _valueTotalDigits
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        graphics.drawChars(charArray, 0, len, x, y, 0)
        graphics.drawChars(charArray2, 0, len2, JR.i32(x - _offset), y, 0)
    }
    

    paintThreed(graphics) {
    }
}

import "../../../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" for BasicHudFactory
import "../../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton" for PrimitiveLongSingleton
import "../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil" for PrimitiveLongUtil

