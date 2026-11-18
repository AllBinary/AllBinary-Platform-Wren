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
// package org.allbinary.game.ag.layer.hud.basic.level

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud" for BasicHud

class LevelHudWidget is BasicHud {
  level { _level }
  level=(value) { _level = value }
  maxlevel { _maxlevel }
  maxlevel=(value) { _maxlevel = value }
  levelString { _levelString }
  levelString=(value) { _levelString = value }
  levelNumberCharArray { _levelNumberCharArray }
  levelNumberCharArray=(value) { _levelNumberCharArray = value }
  levelNumberTotalDigits { _levelNumberTotalDigits }
  levelNumberTotalDigits=(value) { _levelNumberTotalDigits = value }
  offset { _offset }
  offset=(value) { _offset = value }
  primitiveLongUtil { _primitiveLongUtil }
  primitiveLongUtil=(value) { _primitiveLongUtil = value }

  initFields_LevelHudWidget() {
    _level = 0
    _maxlevel = 0
    _levelString = null
    _levelNumberCharArray = null
    _levelNumberTotalDigits = 0
    _offset = 0
    _primitiveLongUtil = null
        
        
        
        _levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY
        _levelNumberTotalDigits = 0
        _offset = 0
        
  }
    

    static createHud(maxlevel, location, direction) {
        return LevelHudWidget.new(maxlevel, location, direction)
    }
    

    construct new(maxlevel, location, direction) {
        super(location, direction, 2, BasicColorFactory.getInstance().GREY)
        initFields_LevelHudWidget()
        _primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        var LEVEL = "Lv "
        _levelString = JR.toCharArray(LEVEL)
        _maxlevel = maxlevel
        _level = maxlevel
        this.update()
        this.updateMaxHeight = 14
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        this.updateMaxWidth = (font.getSize() * 4)
        _offset = (font.charsWidth(_levelString, 0, _levelString.count) + font.getSize())
        super.updateMeasurement(graphics)
    }
    

    update() {
        _levelNumberCharArray = _primitiveLongUtil.getCharArray(_level)
        _levelNumberTotalDigits = _primitiveLongUtil.getCurrentTotalDigits()
    }
    

    setLevel(level) {
        _level = level
        this.update()
    }
    

    nextLevel() {
        _level = JR.i32(_level + 1)
        this.update()
    }
    

    previousLevel() {
        _level = JR.i32(_level - 1)
        if ((_level < 0)) {
            _level = 0
        }
        this.update()
    }
    

    isComplete() {
        if ((_level <= _maxlevel)) {
            return false
        } else {
            return true
        }
    }
    

    paint(graphics) {
        super.paintDX(graphics, _levelString, 0, _levelString.count, _levelNumberCharArray, 0, _levelNumberTotalDigits, _offset)
    }
    

    paintThreed(graphics) {
    }
}

import "../../../../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil" for PrimitiveLongUtil

