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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class GraphicsFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GraphicsFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  TRANSPARENT_IMAGE_CREATION { _TRANSPARENT_IMAGE_CREATION }
  TRANSPARENT_IMAGE_CREATION=(value) { _TRANSPARENT_IMAGE_CREATION = value }
  IMAGE_GRAPHICS { _IMAGE_GRAPHICS }
  IMAGE_GRAPHICS=(value) { _IMAGE_GRAPHICS = value }
  IMAGE_ROTATION_ON_THE_FLY { _IMAGE_ROTATION_ON_THE_FLY }
  IMAGE_ROTATION_ON_THE_FLY=(value) { _IMAGE_ROTATION_ON_THE_FLY = value }
  IMAGE_TO_ARRAY_GRAPHICS { _IMAGE_TO_ARRAY_GRAPHICS }
  IMAGE_TO_ARRAY_GRAPHICS=(value) { _IMAGE_TO_ARRAY_GRAPHICS = value }
  SPRITE_QUARTER_ROTATION_GRAPHICS { _SPRITE_QUARTER_ROTATION_GRAPHICS }
  SPRITE_QUARTER_ROTATION_GRAPHICS=(value) { _SPRITE_QUARTER_ROTATION_GRAPHICS = value }
  SPRITE_FULL_GRAPHICS { _SPRITE_FULL_GRAPHICS }
  SPRITE_FULL_GRAPHICS=(value) { _SPRITE_FULL_GRAPHICS = value }
  VECTOR_GRAPHICS { _VECTOR_GRAPHICS }
  VECTOR_GRAPHICS=(value) { _VECTOR_GRAPHICS = value }
  VECTOR_TO_IMAGE_GRAPHICS { _VECTOR_TO_IMAGE_GRAPHICS }
  VECTOR_TO_IMAGE_GRAPHICS=(value) { _VECTOR_TO_IMAGE_GRAPHICS = value }

  initFields_GraphicsFeatureFactory() {
    _NONE = null
    _TRANSPARENT_IMAGE_CREATION = null
    _IMAGE_GRAPHICS = null
    _IMAGE_ROTATION_ON_THE_FLY = null
    _IMAGE_TO_ARRAY_GRAPHICS = null
    _SPRITE_QUARTER_ROTATION_GRAPHICS = null
    _SPRITE_FULL_GRAPHICS = null
    _VECTOR_GRAPHICS = null
    _VECTOR_TO_IMAGE_GRAPHICS = null
        _NONE = GraphicsFeature.new(StringUtil.getInstance().NULL_STRING)
        _TRANSPARENT_IMAGE_CREATION = GraphicsFeature.new("Transparent Image Creation")
        _IMAGE_GRAPHICS = GraphicsFeature.new("Image Graphics")
        _IMAGE_ROTATION_ON_THE_FLY = GraphicsFeature.new("Image Rotated On The Fly")
        _IMAGE_TO_ARRAY_GRAPHICS = GraphicsFeature.new("Image To Array Graphics")
        _SPRITE_QUARTER_ROTATION_GRAPHICS = GraphicsFeature.new("Sprite Quarter Rotation Graphics")
        _SPRITE_FULL_GRAPHICS = GraphicsFeature.new("Sprite Full Rotation Graphics")
        _VECTOR_GRAPHICS = GraphicsFeature.new("BasicArrayList Graphics")
        _VECTOR_TO_IMAGE_GRAPHICS = GraphicsFeature.new("BasicArrayList To Image Graphics")
  }
    

    static getInstance() {
        return GraphicsFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_GraphicsFeatureFactory()
    }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./GraphicsFeature" for GraphicsFeature

