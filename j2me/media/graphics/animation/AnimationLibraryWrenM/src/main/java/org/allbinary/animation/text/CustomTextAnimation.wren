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
// package org.allbinary.animation.text

import "../../../../allbinary_java" for JObject, JException, JR
import "./TextAnimation" for TextAnimation

class CustomTextAnimation is TextAnimation {
  fontDebugFactory { _fontDebugFactory }
  fontDebugFactory=(value) { _fontDebugFactory = value }
  fontSize { _fontSize }
  fontSize=(value) { _fontSize = value }
  font { _font }
  font=(value) { _font = value }
  lastText { _lastText }
  lastText=(value) { _lastText = value }
  hasChanged { _hasChanged }
  hasChanged=(value) { _hasChanged = value }
  textWidth { _textWidth }
  textWidth=(value) { _textWidth = value }

  initFields_CustomTextAnimation() {
    _fontDebugFactory = null
    _fontSize = 0
    _font = null
    _lastText = null
    _hasChanged = false
    _textWidth = 0
        _fontDebugFactory = FontDebugFactory.getInstance()
        
        
        _lastText = StringUtil.getInstance().INIT_STRING
        _hasChanged = true
        _textWidth = 0
  }
    

    construct new(text, fontSize, animationBehavior) {
        super(text, animationBehavior)
        initFields_CustomTextAnimation()
        _fontSize = fontSize
        _font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize)
    }
    

    paintXY(graphics, x, y) {
        this.myFontProcessor.process(graphics)
        var existingFont = graphics.getFont()
        _fontDebugFactory.setFont(_font, graphics)
        super.paintXYNoUpdate(graphics, x, y)
        _fontDebugFactory.setFont(existingFont, graphics)
    }
    

    setScale(scaleX, scaleY) {
        if ((scaleX != scaleY)) {
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
        _hasChanged = true
        _font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, JR.i32(JR.d2i(((_fontSize * scaleX)))))
    }
    

    setTextWithOnMeasure(text, textChangeListener) {
        super.setTextWithOnMeasure(text, textChangeListener)
    }
    

    setText(text) {
        if ((_lastText != text)) {
            _hasChanged = true
            _lastText = text
            super.setText(text)
        }
    }
    

    getText() {
        return _lastText
    }
    

    getWidth() {
        if (_hasChanged) {
            _textWidth = _font.stringWidth(this.textArrayP[0])
            _hasChanged = false
        }
        return _textWidth
    }
    

    getFontHeight() {
        return _font.getHeight()
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/font/FontDebugFactory" for FontDebugFactory
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./TextInterface" for TextInterface
import "./TextChangeListener" for TextChangeListener

