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
// package org.allbinary.game.graphics.hud

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicHud is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  canvasStrings { _canvasStrings }
  canvasStrings=(value) { _canvasStrings = value }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  displayInfo { _displayInfo }
  displayInfo=(value) { _displayInfo = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  location { _location }
  location=(value) { _location = value }
  direction { _direction }
  direction=(value) { _direction = value }
  bufferZone { _bufferZone }
  bufferZone=(value) { _bufferZone = value }
  bufferZoneY { _bufferZoneY }
  bufferZoneY=(value) { _bufferZoneY = value }
  hudGraphicsPosition { _hudGraphicsPosition }
  hudGraphicsPosition=(value) { _hudGraphicsPosition = value }
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  color { _color }
  color=(value) { _color = value }
  updateMaxWidth { _updateMaxWidth }
  updateMaxWidth=(value) { _updateMaxWidth = value }
  updateMaxHeight { _updateMaxHeight }
  updateMaxHeight=(value) { _updateMaxHeight = value }
  offsetY { _offsetY }
  offsetY=(value) { _offsetY = value }

  initFields_BasicHud() {
    _logUtil = null
    _commonStrings = null
    _canvasStrings = null
    _basicSetColorUtil = null
    _displayInfo = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _location = 0
    _direction = 0
    _bufferZone = 0
    _bufferZoneY = 0
    _hudGraphicsPosition = null
    _x = 0
    _y = 0
    _basicColor = null
    _color = 0
    _updateMaxWidth = 0
    _updateMaxHeight = 0
    _offsetY = 0
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _canvasStrings = CanvasStrings.getInstance()
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _displayInfo = DisplayInfoSingleton.getInstance()
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _location = 0
        _direction = 0
        _bufferZone = 0
        _bufferZoneY = 0
        _hudGraphicsPosition = HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION
        _x = 0
        _y = 0
        _basicColor = BasicColorFactory.getInstance().BLACK
        
        _updateMaxWidth = 0
        _updateMaxHeight = 0
        _offsetY = 0
  }
    

    construct new(location, direction, bufferZone, basicColor) {
    super()
    initFields_BasicHud()
        this.setLocation(location)
        this.setDirection(direction)
        this.setBufferZone(bufferZone)
        this.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent)
        this.setBasicColorP(basicColor)
        _color = basicColor.intValue()
    }
    

    updateMeasurement(graphics) {
        var jerror0 = Fiber.new {
            _hudGraphicsPosition = this.getHudGraphicsPositionWH(_displayInfo.getLastWidth(), _displayInfo.getLastHeight(), _updateMaxWidth, _updateMaxHeight)
            _x = _hudGraphicsPosition.getPoint().getX()
            this.setY(_hudGraphicsPosition.getPoint().getY())
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, _canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        }
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    getLocation() {
        return _location
    }
    

    getDirection() {
        return _direction
    }
    

    getHudGraphicsPositionWH(width, height, maxWidth, maxHeight) {
        var x = 0
        var y = 0
        var anchor = 0
        var basicHudFactory = BasicHudFactory.getInstance()
        if ((basicHudFactory.BOTTOMLEFT == this.getLocation())) {
            x = JR.i32(_bufferZone + 2)
            y = JR.i32(JR.i32(height - maxHeight) - _bufferZone)
            anchor = (Graphics.BOTTOM & Graphics.LEFT)
        } else if ((basicHudFactory.BOTTOMRIGHT == this.getLocation())) {
            x = JR.i32(width - maxWidth)
            y = JR.i32(JR.i32(height - maxHeight) - _bufferZone)
            anchor = (Graphics.BOTTOM & Graphics.RIGHT)
        } else if ((basicHudFactory.TOPLEFT == this.getLocation())) {
            x = JR.i32(_bufferZone + 2)
            y = _bufferZoneY
            anchor = Anchor.TOP_LEFT
        } else if ((basicHudFactory.TOPRIGHT == this.getLocation())) {
            x = JR.i32(width - maxWidth)
            y = _bufferZoneY
            anchor = (Graphics.TOP & Graphics.RIGHT)
        } else if ((basicHudFactory.TOPCENTER == this.getLocation())) {
            x = (JR.idiv((JR.i32(width - maxWidth)), 2))
            y = _bufferZoneY
            anchor = (Graphics.TOP & Graphics.HCENTER)
        } else if ((basicHudFactory.BOTTOMCENTER == this.getLocation())) {
            x = (JR.idiv((JR.i32(width - maxWidth)), 2))
            y = JR.i32(JR.i32(height - maxHeight) - _bufferZone)
            anchor = (Graphics.BOTTOM & Graphics.HCENTER)
        } else if ((basicHudFactory.ABSOLUTE == this.getLocation())) {
            x = maxHeight
            y = maxWidth
            anchor = 0
        }
        return HudGraphicsPosition.new(this.getPoint(x, y), anchor)
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onDisplayChangeEvent(displayChangeEvent) {
        _myFontProcessor = _updateMyFontProcessor
    }
    

    getPoint(x, y) {
        return PointFactory.getInstance().createXY(x, y)
    }
    

    getBufferZone() {
        return _bufferZone
    }
    

    setBufferZone(bufferZone) {
        _bufferZone = bufferZone
        if (J2MEUtil.isHTML()) {
            _bufferZoneY = _bufferZone
        } else {
            _bufferZoneY = JR.i32(_bufferZone + 5)
        }
    }
    

    setLocation(location) {
        _location = location
    }
    

    setDirection(direction) {
        _direction = direction
    }
    

    getHudGraphicsPosition() {
        return _hudGraphicsPosition
    }
    

    getColor() {
        return _color
    }
    

    getX() {
        return _x
    }
    

    setX(x) {
        _x = x
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    setY(y) {
        _y = y
    }
    

    getY() {
        return _y
    }
    

    paintSSO(graphics, string, string2, offset) {
        _myFontProcessor.process(graphics)
        _basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        graphics.drawString(string, _x, this.getY(), _hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, JR.i32(_x + offset), this.getY(), _hudGraphicsPosition.getAnchor())
    }
    

    paintSSOO(graphics, string, string2, offset, offset2) {
        _myFontProcessor.process(graphics)
        graphics.setColor(this.getColor())
        graphics.drawString(string, JR.i32(_x + offset), this.getY(), _hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, JR.i32(_x + offset2), this.getY(), _hudGraphicsPosition.getAnchor())
    }
    

    paintDXY(graphics, charArray, offset, len, charArray2, offset2, len2, xOffset, xOffset2) {
        _myFontProcessor.process(graphics)
        _basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        var y = this.getY()
        graphics.drawChars(charArray, offset, len, JR.i32(_x + xOffset), y, _hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, JR.i32(_x + xOffset2), y, _hudGraphicsPosition.getAnchor())
    }
    

    paintDX(graphics, charArray, offset, len, charArray2, offset2, len2, xOffset) {
        _myFontProcessor.process(graphics)
        _basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        var y = this.getY()
        graphics.drawChars(charArray, offset, len, _x, y, _hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, JR.i32(_x + xOffset), y, _hudGraphicsPosition.getAnchor())
    }
    

    paintOffsetAndLength(graphics, charArray, offset, len) {
        _myFontProcessor.process(graphics)
        _basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        var y = this.getY()
        graphics.drawChars(charArray, offset, len, _x, y, _hudGraphicsPosition.getAnchor())
    }
    

    paintString(graphics, string) {
        _myFontProcessor.process(graphics)
        _basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        var y = JR.i32(this.getY() + _offsetY)
        graphics.drawString(string, _x, y, _hudGraphicsPosition.getAnchor())
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./HudGraphicsPosition" for HudGraphicsPosition
import "./BasicHudFactory" for BasicHudFactory

