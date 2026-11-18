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
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class CustomTextBoxIndexedAnimation is IndexedAnimation {
  customTextBox { _customTextBox }
  customTextBox=(value) { _customTextBox = value }
  lastText { _lastText }
  lastText=(value) { _lastText = value }
  hasChanged { _hasChanged }
  hasChanged=(value) { _hasChanged = value }
  textChangeListener { _textChangeListener }
  textChangeListener=(value) { _textChangeListener = value }

  initFields_CustomTextBoxIndexedAnimation() {
    _customTextBox = null
    _lastText = null
    _hasChanged = false
    _textChangeListener = null
        
        _lastText = StringUtil.getInstance().INIT_STRING
        _hasChanged = true
        _textChangeListener = TextChangeListener.getInstance()
  }
    

    construct new(customTextBox) {
        super(AnimationBehavior.getInstance())
        initFields_CustomTextBoxIndexedAnimation()
        _customTextBox = customTextBox
    }
    

    setBasicColorP(basicColor) {
        _customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor)
    }
    

    setBackgroundBasicColorP(basicColor) {
        _customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor)
    }
    

    setTextWithOnMeasure(text, textChangeListener) {
        this.setText(text)
        _textChangeListener = textChangeListener
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _textChangeListener.onMeasure()
        _textChangeListener = TextChangeListener.getInstance()
    }
    

    setText(text) {
        if ((_lastText != text)) {
            _hasChanged = true
            _lastText = text
            _customTextBox.getTextFieldItem().setString(text)
        }
    }
    

    getText() {
        return _customTextBox.getTextFieldItem().getString()
    }
    

    onEventRaw(keyCode, deviceId, repeated) {
        _customTextBox.onEventRaw(keyCode, deviceId, repeated)
    }
    

    getFontHeight() {
        return _customTextBox.getTextFieldItem().getFontHeight()
    }
    

    paintXY(graphics, x, y) {
        _customTextBox.paintXY(graphics, x, y)
    }
    

    paintThreedXYZ(graphics, x, y, z) {
    }
    

    getWidth() {
        return super.getWidth()
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/game/input/event/RawKeyEventListener" for RawKeyEventListener
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/form/item/CustomTextBox" for CustomTextBox
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./TextInterface" for TextInterface
import "./TextChangeListener" for TextChangeListener

