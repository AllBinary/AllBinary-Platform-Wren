/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

import "../../../../allbinary_java" for JObject, JException, JR

class CustomTextBoxIndexedAnimationFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  scaleProperties { _scaleProperties }
  scaleProperties=(value) { _scaleProperties = value }
  maxLength { _maxLength }
  maxLength=(value) { _maxLength = value }

  initFields_CustomTextBoxIndexedAnimationFactory() {
    _logUtil = null
    _scaleProperties = null
    _maxLength = 0
        _logUtil = LogUtil.getInstance()
        
        
  }
    

    construct new(fontSize, maxLength) {
    super()
    initFields_CustomTextBoxIndexedAnimationFactory()
        _scaleProperties = ScaleProperties.new()
        _scaleProperties.scaleHeight = fontSize
        _maxLength = maxLength
    }
    

    getInstance(instanceId) {
        var abToGBUtil = ABToGBUtil.getInstance()
        var abCanvas = abToGBUtil.abCanvas
        var font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, _scaleProperties.scaleHeight)
        var customTextBox = CustomTextBox2.new(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, _maxLength, TextField.ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor())
        return CustomTextBoxIndexedAnimation.new(customTextBox)
    }
    

    setInitialScale(scaleProperties) {
        var fontSize = _scaleProperties.scaleHeight
        _scaleProperties = scaleProperties
        if ((_scaleProperties.scaleHeight < 6)) {
            _scaleProperties.scaleHeight = fontSize
        }
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/TextField" for TextField
import "../../../../org/allbinary/graphics/form/item/CustomTextBox" for CustomTextBox
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/game/canvas/ABToGBUtil" for ABToGBUtil
import "../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./CustomTextBox2" for CustomTextBox2
import "./CustomTextBoxIndexedAnimation" for CustomTextBoxIndexedAnimation

