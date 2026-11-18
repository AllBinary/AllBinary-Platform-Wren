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

class CustomTextAnimationFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  text { _text }
  text=(value) { _text = value }
  initScaleHeight { _initScaleHeight }
  initScaleHeight=(value) { _initScaleHeight = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  font { _font }
  font=(value) { _font = value }
  scaleProperties { _scaleProperties }
  scaleProperties=(value) { _scaleProperties = value }

  initFields_CustomTextAnimationFactory() {
    _logUtil = null
    _animationBehaviorFactory = null
    _basicColor = null
    _text = null
    _initScaleHeight = 0
    _dx = 0
    _dy = 0
    _font = null
    _scaleProperties = null
        _logUtil = LogUtil.getInstance()
        
        _basicColor = BasicColorFactory.getInstance().BLACK
        
        
        _dx = 0
        _dy = 0
        
        
  }
    

    static createDXY(text, fontSize, dx, dy, animationBehaviorFactory) {
        var customTextAnimationFactory = CustomTextAnimationFactory.new(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.dx = dx
        customTextAnimationFactory.dy = dy
        return customTextAnimationFactory
    }
    

    construct new(text, fontSize, animationBehaviorFactory) {
    super()
    initFields_CustomTextAnimationFactory()
        _scaleProperties = ScaleProperties.new()
        _text = text
        _scaleProperties.scaleHeight = JR.i32(fontSize - (JR.idiv(fontSize, 4)))
        _initScaleHeight = _scaleProperties.scaleHeight
        _animationBehaviorFactory = animationBehaviorFactory
        _font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, _initScaleHeight)
    }
    

    getInstance(instanceId) {
        var customTextAnimation = null
        if (((_dx != 0) || (_dy != 0))) {
            customTextAnimation = AdjustCustomTextAnimation.new(_text, _scaleProperties.scaleHeight, _dx, _dy, _animationBehaviorFactory.getOrCreateInstance())
        } else {
            customTextAnimation = CustomTextAnimation.new(_text, _scaleProperties.scaleHeight, _animationBehaviorFactory.getOrCreateInstance())
        }
        customTextAnimation.setBasicColorP(_basicColor)
        return customTextAnimation
    }
    

    setInitialScale(scaleProperties) {
    }
    

    getWidth() {
        return _font.stringWidth(_text)
    }
    

    getHeight() {
        return _font.getHeight()
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./CustomTextAnimation" for CustomTextAnimation
import "./AdjustCustomTextAnimation" for AdjustCustomTextAnimation

