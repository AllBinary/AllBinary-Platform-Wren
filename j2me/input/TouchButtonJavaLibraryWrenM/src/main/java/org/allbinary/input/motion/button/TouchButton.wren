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

class TouchButton is Paintable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  touchButtonInput { _touchButtonInput }
  touchButtonInput=(value) { _touchButtonInput = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  hintAnimationInterface { _hintAnimationInterface }
  hintAnimationInterface=(value) { _hintAnimationInterface = value }
  rawRectangle { _rawRectangle }
  rawRectangle=(value) { _rawRectangle = value }
  xBorder { _xBorder }
  xBorder=(value) { _xBorder = value }
  yBorder { _yBorder }
  yBorder=(value) { _yBorder = value }
  rectangleP { _rectangleP }
  rectangleP=(value) { _rectangleP = value }
  cellPositionP { _cellPositionP }
  cellPositionP=(value) { _cellPositionP = value }
  animationX { _animationX }
  animationX=(value) { _animationX = value }
  animationY { _animationY }
  animationY=(value) { _animationY = value }
  hintAnimationY { _hintAnimationY }
  hintAnimationY=(value) { _hintAnimationY = value }

  initFields_TouchButton() {
    _logUtil = null
    _commonStrings = null
    _touchButtonInput = null
    _animationInterface = null
    _hintAnimationInterface = null
    _rawRectangle = null
    _xBorder = 0
    _yBorder = 0
    _rectangleP = null
    _cellPositionP = null
    _animationX = 0
    _animationY = 0
    _hintAnimationY = 0
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        
        
        
        
        _rectangleP = RectangleFactory.SINGLETON
        
        _animationX = 0
        _animationY = 0
        _hintAnimationY = 0
  }
    

    static createButton(touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder) {
        return TouchButton.new(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    }
    

    construct new(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder) {
    super()
    initFields_TouchButton()
        _touchButtonInput = touchButtonInput
        _animationInterface = animationInterface
        _hintAnimationInterface = hintAnimationInterface
        _rawRectangle = rawRectangle
        _cellPositionP = cellPosition
        _xBorder = xBorder
        _yBorder = yBorder
        this.updateRectangle()
        _logUtil.putF(StringMaker.new().append("Created: ").append(this.toString()).toString(), this, _commonStrings.CONSTRUCTOR)
    }
    

    paintHint(graphics) {
        _hintAnimationInterface.paintXY(graphics, _animationX, _hintAnimationY)
    }
    

    paint(graphics) {
        _animationInterface.paintXY(graphics, _animationX, _animationY)
    }
    

    updateRectangle() {
        var jerror0 = Fiber.new {
            var pointFactory = PointFactory.getInstance()
            var x = (_rawRectangle.getWidth() * _cellPositionP.getColumn())
            var y = (_rawRectangle.getHeight() * _cellPositionP.getRow())
            _rectangleP = Rectangle.new(pointFactory.createXY(JR.i32(x + _xBorder), JR.i32(y + _yBorder)), _rawRectangle.getWidth(), _rawRectangle.getHeight())
            var point = _rectangleP.getPoint()
            _animationX = point.getX()
            _animationY = point.getY()
            _hintAnimationY = JR.i32(_animationY - 32)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, "updateRectangle", e)
        }
    }
    

    getCellPosition() {
        return _cellPositionP
    }
    

    getRectangle() {
        return _rectangleP
    }
    

    getTouchButtonInput() {
        return _touchButtonInput
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        var stringUtil = StringUtil.getInstance()
        stringBuffer.append("TouchButton: ")
        stringBuffer.append(stringUtil.toString(this.getRectangle()))
        stringBuffer.append(" CellPosition: ")
        stringBuffer.append(stringUtil.toString(_cellPositionP))
        stringBuffer.append(" xBorder: ")
        stringBuffer.appendint(_xBorder)
        stringBuffer.append(" yBorder: ")
        stringBuffer.appendint(_yBorder)
        return stringBuffer.toString()
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../org/allbinary/graphics/CellPosition" for CellPosition
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./TouchButtonInput" for TouchButtonInput
import "./TouchButtonResource" for TouchButtonResource

