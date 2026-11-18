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
// package org.allbinary.game.resource

import "../../../../allbinary_java" for JObject, JException, JR

class FeaturedResourceFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  list { _list }
  list=(value) { _list = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  ANIMATION_FEATURES { _ANIMATION_FEATURES }
  ANIMATION_FEATURES=(value) { _ANIMATION_FEATURES = value }
  IMAGE_LABEL { _IMAGE_LABEL }
  IMAGE_LABEL=(value) { _IMAGE_LABEL = value }
  IMAGE_GRAPHICS_ARRAY { _IMAGE_GRAPHICS_ARRAY }
  IMAGE_GRAPHICS_ARRAY=(value) { _IMAGE_GRAPHICS_ARRAY = value }
  IMAGE_GRAPHICS_ROTATION { _IMAGE_GRAPHICS_ROTATION }
  IMAGE_GRAPHICS_ROTATION=(value) { _IMAGE_GRAPHICS_ROTATION = value }
  SPRITE_QUARTER { _SPRITE_QUARTER }
  SPRITE_QUARTER=(value) { _SPRITE_QUARTER = value }
  SPRITE_FULL { _SPRITE_FULL }
  SPRITE_FULL=(value) { _SPRITE_FULL = value }
  IS_LOADING_LEVEL_LABEL { _IS_LOADING_LEVEL_LABEL }
  IS_LOADING_LEVEL_LABEL=(value) { _IS_LOADING_LEVEL_LABEL = value }
  IS_FEATURE { _IS_FEATURE }
  IS_FEATURE=(value) { _IS_FEATURE = value }
  GAME_FEATURE_CONTROLLED { _GAME_FEATURE_CONTROLLED }
  GAME_FEATURE_CONTROLLED=(value) { _GAME_FEATURE_CONTROLLED = value }

  initFields_FeaturedResourceFactory() {
    _logUtil = null
    _list = null
    _commonStrings = null
    _ANIMATION_FEATURES = null
    _IMAGE_LABEL = null
    _IMAGE_GRAPHICS_ARRAY = null
    _IMAGE_GRAPHICS_ROTATION = null
    _SPRITE_QUARTER = null
    _SPRITE_FULL = null
    _IS_LOADING_LEVEL_LABEL = null
    _IS_FEATURE = null
    _GAME_FEATURE_CONTROLLED = null
        _logUtil = LogUtil.getInstance()
        _list = BasicArrayListD.new()
        _commonStrings = CommonStrings.getInstance()
        _ANIMATION_FEATURES = "Animation Features: Vector: "
        _IMAGE_LABEL = " Image: "
        _IMAGE_GRAPHICS_ARRAY = "Image Array: "
        _IMAGE_GRAPHICS_ROTATION = "Image Rotate: "
        _SPRITE_QUARTER = " Sprite Quarter: "
        _SPRITE_FULL = " Sprite Full: "
        _IS_LOADING_LEVEL_LABEL = " isLoadingLevel "
        _IS_FEATURE = " isFeature: "
        _GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: "
  }
    

    construct new() {
    super()
    initFields_FeaturedResourceFactory()
    }
    

    init(level) {
        var size = _list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var featureInterface = _list.objectArray[index]
            var isLoadingLevel = featureInterface.isLoadingLevel(level)
            var isFeature = featureInterface.isFeature()
            _logUtil.putF(StringMaker.new().append(_GAME_FEATURE_CONTROLLED).append(featureInterface.toString()).append(_IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(_IS_FEATURE).appendboolean(isFeature).toString(), this, _commonStrings.INIT)
            if ((isLoadingLevel && isFeature)) {
                featureInterface.init(level)
            }
            }
        }
        var features = Features.getInstance()
        var graphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(_ANIMATION_FEATURES)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS))
        stringBuffer.append(_IMAGE_LABEL)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS))
        _logUtil.putF(stringBuffer.toString(), this, _commonStrings.INIT)
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(_IMAGE_GRAPHICS_ARRAY)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(_IMAGE_GRAPHICS_ROTATION)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(_SPRITE_QUARTER)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS))
            stringBuffer.append(_SPRITE_FULL)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS))
            _logUtil.putF(stringBuffer.toString(), this, _commonStrings.INIT)
        }
    }
    

    clear() {
        _list.clear()
    }
    

    add(featureInterface) {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(featureInterface)).toString(), this, _commonStrings.ADD)
        _list.add(featureInterface)
    }
    

    getList() {
        return _list
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureControlledInterface" for GameFeatureControlledInterface
import "../../../../org/allbinary/game/configuration/feature/GraphicsFeatureFactory" for GraphicsFeatureFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory

