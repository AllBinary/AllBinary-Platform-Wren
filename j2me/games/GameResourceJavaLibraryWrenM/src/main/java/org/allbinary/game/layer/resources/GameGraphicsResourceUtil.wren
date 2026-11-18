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
// package org.allbinary.game.layer.resources

import "../../../../../allbinary_java" for JObject, JException, JR

class GameGraphicsResourceUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  SPRITE { _SPRITE }
  SPRITE=(value) { _SPRITE = value }
  QUARTER { _QUARTER }
  QUARTER=(value) { _QUARTER = value }
  name { _name }
  name=(value) { _name = value }

  initFields_GameGraphicsResourceUtil() {
    _logUtil = null
    _SPRITE = null
    _QUARTER = null
    _name = null
        _logUtil = LogUtil.getInstance()
        _SPRITE = "_sprite"
        _QUARTER = "_quarter"
        _name = StringUtil.getInstance().EMPTY_STRING
  }
    

    static getInstance() {
        if ((GameGraphicsResourceUtil.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GameGraphicsResourceUtil.instance = GameGraphicsResourceUtil.new()
        }
        return GameGraphicsResourceUtil.instance
    }
    

    construct new() {
    super()
    initFields_GameGraphicsResourceUtil()
        var jerror0 = Fiber.new {
            _name = this.getString()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
    

    getString() {
        var graphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        var graphicsFeature = graphicsFeatureFactory.NONE
        var features = Features.getInstance()
        if (features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
        }
        return this.getStringForFeature(graphicsFeature)
    }
    

    getStringForFeature(graphicsFeature) {
        var stringBuffer = StringMaker.new()
        var graphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        stringBuffer.delete(0, stringBuffer.length())
        var features = Features.getInstance()
        if (features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)) {
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            if (((graphicsFeature == graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS) || (graphicsFeature == graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY))) {
            } else if ((graphicsFeature == graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
                stringBuffer.append(_SPRITE)
            } else if ((graphicsFeature == graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
                stringBuffer.append(_QUARTER)
                stringBuffer.append(_SPRITE)
            } else {
                Fiber.abort(JR.exception("Exception", "None/Unknown Sub Image Resource Type Specified"))
            }
        } else if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL)
        } else {
            Fiber.abort(JR.exception("Exception", "None/Unknown Main Image Resource Type Specified"))
        }
        return stringBuffer.toString()
    }
    

    getName() {
        return _name
    }
}

import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/GraphicsFeature" for GraphicsFeature
import "../../../../../org/allbinary/game/configuration/feature/GraphicsFeatureFactory" for GraphicsFeatureFactory
import "../../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

