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
// package org.allbinary.animation.vector

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/Animation" for Animation

class LineAnimation is Animation {
  newLine { _newLine }
  newLine=(value) { _newLine = value }
  tempLine { _tempLine }
  tempLine=(value) { _tempLine = value }
  line { _line }
  line=(value) { _line = value }

  initFields_LineAnimation() {
    _newLine = null
    _tempLine = null
    _line = null
        _newLine = JR.listOf(2, Fn.new { List.filled(2, 0) })
        _tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        _line = JR.listOf(2, Fn.new { List.filled(2, 0) })
  }
    

    construct new(basicColor) {
    super()
    initFields_LineAnimation()
        this.setBasicColorP(basicColor)
    }
    

    init(x, y) {
        _newLine[0][0] = x
        _newLine[0][1] = y
        _newLine[1][0] = x
        _newLine[1][1] = y
        _tempLine = _line
        _line = _newLine
        _newLine = _tempLine
    }
    

    setPosition(x, y, z) {
        _newLine[0][0] = _line[1][0]
        _newLine[0][1] = _line[1][1]
        _newLine[1][0] = x
        _newLine[1][1] = y
        _tempLine = _line
        _line = _newLine
        _newLine = _tempLine
    }
    

    paintXY(graphics, x, y) {
        var currentLine = _line
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        graphics.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1])
    }
    

    nextFrame() {
    }
    

    getBasicColorP() {
        return super.getBasicColorP()
    }
    

    setBasicColorP(basicColor) {
        super.setBasicColorP(basicColor)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/ColorCompositeInterface" for ColorCompositeInterface
import "../../../../org/allbinary/layer/PositionInterface" for PositionInterface
import "../../../../org/allbinary/logic/NullUtil" for NullUtil

