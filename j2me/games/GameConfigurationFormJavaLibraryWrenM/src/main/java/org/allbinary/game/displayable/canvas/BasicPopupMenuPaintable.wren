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
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class BasicPopupMenuPaintable is Paintable {
    static NAME { "MENU" }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  drawStringUtil { _drawStringUtil }
  drawStringUtil=(value) { _drawStringUtil = value }
  label { _label }
  label=(value) { _label = value }
  foregroundBasicColor { _foregroundBasicColor }
  foregroundBasicColor=(value) { _foregroundBasicColor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  rectangle { _rectangle }
  rectangle=(value) { _rectangle = value }
  BORDER { _BORDER }
  BORDER=(value) { _BORDER = value }
  heightOffset { _heightOffset }
  heightOffset=(value) { _heightOffset = value }
  offset { _offset }
  offset=(value) { _offset = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_BasicPopupMenuPaintable() {
    _basicSetColorUtil = null
    _drawStringUtil = null
    _label = null
    _foregroundBasicColor = null
    _myFontProcessor = null
    _rectangle = null
    _BORDER = 0
    _heightOffset = 0
    _offset = 0
    _animationInterface = null
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _drawStringUtil = DrawVerticalStringUtil.getInstance()
        
        
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        
        _BORDER = 0
        _heightOffset = 0
        _offset = 0
        _animationInterface = null
  }
    

    construct new(rectangle, backgroundBasicColor, foregroundBasicColor) {
    super()
    initFields_BasicPopupMenuPaintable()
        _foregroundBasicColor = foregroundBasicColor
        _label = BasicPopupMenuPaintable.NAME
        _rectangle = rectangle
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
            _animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        } else {
            _animationInterface = RectangleFilledAnimation.new(_rectangle.getWidth(), _rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY)
        }
        this.init(rectangle)
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        var features = Features.getInstance()
        var isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        _drawStringUtil.updateMeasurement(graphics, _label)
        var BORDER = 0
        if ((J2MEUtil.isHTML() || isOpenGL)) {
            BORDER = (MyFontProcessor.defaultCharWidth(font) / 2)
        } else if (((AndroidUtil.isAndroid() || J2MEUtil.isJ2SE()) || SWTUtil.isSWT)) {
            BORDER = MyFontProcessor.defaultCharWidth(font)
        } else {
            BORDER = (MyFontProcessor.defaultCharWidth(font) * 2)
        }
        _BORDER = BORDER
        _heightOffset = (_rectangle.getHeight() - ((font.getHeight() * BasicPopupMenuPaintable.NAME.length())))
        if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            _heightOffset = JR.i32(_heightOffset - (font.getHeight() + 2))
            if (AndroidUtil.isAndroid()) {
                _heightOffset = font.getHeight()
            } else {
                _heightOffset = JR.i32(_heightOffset - (font.getHeight() + 2))
            }
        }
        _offset = JR.i32((JR.shr(_heightOffset, 1)) + ((SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0)))
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    init(rectangle) {
        _rectangle = rectangle
        var width = _rectangle.getWidth()
        var height = _rectangle.getHeight()
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
        } else {
            var rectangleFilledAnimation = _animationInterface
            rectangleFilledAnimation.setWidth(width)
            rectangleFilledAnimation.setHeight(height)
        }
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        var point = _rectangle.getPoint()
        var x = point.getX()
        var y = point.getY()
        var width = _rectangle.getWidth()
        var height = _rectangle.getHeight()
        _animationInterface.paintXY(graphics, x, y)
        _basicSetColorUtil.setBasicColorP(graphics, _foregroundBasicColor)
        _drawStringUtil.paintVerticle(graphics, _label, JR.i32(x + _BORDER), JR.i32(y + _offset), 0)
        graphics.drawRect(x, y, width, height)
    }
}

import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/animation/vector/RectangleFilledAnimation" for RectangleFilledAnimation
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/layer/SWTUtil" for SWTUtil
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../../org/allbinary/graphics/draw/DrawVerticalStringUtil" for DrawVerticalStringUtil
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" for SWTJOGLProcessor

