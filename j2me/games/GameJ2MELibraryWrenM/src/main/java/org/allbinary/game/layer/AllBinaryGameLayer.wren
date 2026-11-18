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
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

class AllBinaryGameLayer is AllBinaryLayer {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  RED { _RED }
  RED=(value) { _RED = value }
  paintable { _paintable }
  paintable=(value) { _paintable = value }
  gameKeyEventList { _gameKeyEventList }
  gameKeyEventList=(value) { _gameKeyEventList = value }

  initFields_AllBinaryGameLayer() {
    _commonStrings = null
    _basicSetColorUtil = null
    _RED = null
    _paintable = null
    _gameKeyEventList = null
        _commonStrings = CommonStrings.getInstance()
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _RED = BasicColorFactory.getInstance().RED
        _paintable = AllBinaryGameLayer.createPaintable()
        _gameKeyEventList = BasicArrayListD.new()
  }
    

    static createPaintable() {
        if (SWTUtil.isSWT) {
            return SWTBlackPaintable.new()
        }
        return NullPaintable.getInstance()
    }
    

    construct new(name, layerInfo, viewPosition) {
        super(name, layerInfo, viewPosition)
        initFields_AllBinaryGameLayer()
    }
    

    set(gl) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    move() {
    }
    

    getGameKeyEventList() {
        return _gameKeyEventList
    }
    

    processInput(allBinaryLayerManager) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    processTick(allBinaryLayerManager) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onViewPositionChangeEvent() {
        this.onChangeEvent(this.viewPositionEvent)
    }
    

    onChangeEvent(layerManagerEvent) {
        if (GameLayerUtil.isOnScreen(this)) {
            this.setVisible(true)
        } else {
            this.setVisible(false)
        }
    }
    

    paintFirst(graphics) {
        _paintable.paint(graphics)
    }
    

    paintDebug(graphics) {
        var viewPosition = this.getViewPosition()
        var viewX = viewPosition.getX()
        var viewY = viewPosition.getY()
        _basicSetColorUtil.setBasicColorP(graphics, _RED)
        graphics.drawRect(viewX, viewY, this.getWidth(), this.getHeight())
    }
    

    setWidth(width) {
        super.setLayerWidth(width)
        this.setHalfWidth(JR.shr(width, 1))
    }
    

    setHeight(height) {
        super.setLayerHeight(height)
        this.setHalfHeight(JR.shr(height, 1))
    }
}

import "../../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface" for OpenGLSurfaceChangedInterface
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "../../../../org/allbinary/view/event/ViewPositionEvent" for ViewPositionEvent
import "../../../../org/allbinary/view/event/ViewPositionEventListenerInterface" for ViewPositionEventListenerInterface
import "./SWTUtil" for SWTUtil
import "./SWTBlackPaintable" for SWTBlackPaintable
import "./GameLayerUtil" for GameLayerUtil

