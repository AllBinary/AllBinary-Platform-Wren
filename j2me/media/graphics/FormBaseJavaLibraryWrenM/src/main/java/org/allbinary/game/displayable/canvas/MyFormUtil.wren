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

class MyFormUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MyFormUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  popupMenuRectangle { _popupMenuRectangle }
  popupMenuRectangle=(value) { _popupMenuRectangle = value }

  initFields_MyFormUtil() {
    _logUtil = null
    _commonStrings = null
    _popupMenuRectangle = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _popupMenuRectangle = RectangleFactory.SINGLETON
  }

  construct new() {
    super()
    initFields_MyFormUtil()
  }
    

    static getInstance() {
        return MyFormUtil.instance
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        var displayInfo = DisplayInfoSingleton.getInstance()
        var features = Features.getInstance()
        var isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        var TOTAL_CHAR_WIDTH = ((SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL) ? 2 : 3)
        var width = MyFontProcessor.defaultStringWidth(font, TOTAL_CHAR_WIDTH)
        var pointFactory = PointFactory.getInstance()
        if ((displayInfo.getLastHeight() < 320)) {
            _popupMenuRectangle = Rectangle.new(pointFactory.createXY(0, 25), width, (((font.getHeight() * 4)) + 2))
        } else {
            _popupMenuRectangle = Rectangle.new(pointFactory.createXY(0, (displayInfo.getLastHalfHeight() - 70)), width, ((font.getHeight() * 5)))
        }
    }
    

    getPopupMenuRectangle() {
        return _popupMenuRectangle
    }
}

import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" for SWTJOGLProcessor
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

