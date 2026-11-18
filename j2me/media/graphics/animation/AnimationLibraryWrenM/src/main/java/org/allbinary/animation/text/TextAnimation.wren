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
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class TextAnimation is IndexedAnimation {
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  textArrayP { _textArrayP }
  textArrayP=(value) { _textArrayP = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  fontHeight { _fontHeight }
  fontHeight=(value) { _fontHeight = value }
  offsetY { _offsetY }
  offsetY=(value) { _offsetY = value }
  textChangeListener { _textChangeListener }
  textChangeListener=(value) { _textChangeListener = value }

  initFields_TextAnimation() {
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _textArrayP = null
    _anchor = 0
    _fontHeight = 0
    _offsetY = 0
    _textChangeListener = null
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        _anchor = Anchor.TOP_LEFT
        _fontHeight = 0
        _offsetY = 0
        _textChangeListener = TextChangeListener.getInstance()
  }
    

    construct new(text, animationBehavior) {
        super(animationBehavior)
        initFields_TextAnimation()
        this.setText(text)
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _fontHeight = font.getHeight()
        var adjustedFontHeight = JR.i32(JR.d2i(-((_fontHeight * 2.00))))
        _offsetY = (SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0)
        _textChangeListener.onMeasure()
        _textChangeListener = TextChangeListener.getInstance()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, x, y) {
        _myFontProcessor.process(graphics)
        this.paintXYNoUpdate(graphics, x, y)
    }
    

    paintXYNoUpdate(graphics, x, y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        var size = _textArrayP.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            graphics.drawString(_textArrayP[index], x, JR.i32(JR.i32(y + _offsetY) + (JR.i32(index * _fontHeight))), _anchor)
            }
        }
    }
    

    setTextWithOnMeasure(text, textChangeListener) {
        this.setText(text)
        _textChangeListener = textChangeListener
    }
    

    setText(text) {
        var list = BasicArrayListD.new()
        if ((JR.length(text) > 0)) {
            var index = 0
            var startIndex = 0
            var endIndex = 0
            while ((index >= 0)) {
                startIndex = index
                index = JR.indexOf(text, "\n".bytes[0], startIndex)
                endIndex = index
                if ((index < 0)) {
                    endIndex = JR.length(text)
                }
                list.add(JR.substring(text, startIndex, endIndex))
                if ((index < 0)) {
                    break
                }
                index = JR.i32(index + 1)
            }
        }
        if ((list.size() > 0)) {
            var textArray = List.filled(list.size(), null)
            var size = list.size()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                textArray[index] = list.get(index)
                }
            }
            _textArrayP = textArray
        } else {
            _textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        }
        _myFontProcessor = _updateMyFontProcessor
    }
    

    getTextArray() {
        return _textArrayP
    }
    

    getFontHeight() {
        return _fontHeight
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" for SWTJOGLProcessor
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./TextChangeListener" for TextChangeListener

