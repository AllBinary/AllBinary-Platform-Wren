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
// package org.allbinary.graphics.draw

import "../../../../allbinary_java" for JObject, JException, JR

class DrawVerticalStringUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DrawVerticalStringUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  charHeight { _charHeight }
  charHeight=(value) { _charHeight = value }
  offsetY { _offsetY }
  offsetY=(value) { _offsetY = value }
  offsetXArray { _offsetXArray }
  offsetXArray=(value) { _offsetXArray = value }

  initFields_DrawVerticalStringUtil() {
    _EMPTY_STRING = null
    _anchor = 0
    _charHeight = 0
    _offsetY = 0
    _offsetXArray = null
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        _anchor = Anchor.TOP_LEFT
        _charHeight = 0
        _offsetY = 0
        _offsetXArray = NullUtil.getInstance().NULL_INT_ARRAY
  }

  construct new() {
    super()
    initFields_DrawVerticalStringUtil()
  }
    

    static getInstance() {
        return DrawVerticalStringUtil.instance
    }
    

    updateMeasurement(graphics, string) {
        var openGLFeatureUtil = OpenGLFeatureUtil.getInstance()
        var font = graphics.getFont()
        _charHeight = font.getHeight()
        _offsetY = 0
        if (J2MEUtil.isHTML()) {
            _charHeight = JR.i32(_charHeight + 1)
        } else if (openGLFeatureUtil.isAnyThreed()) {
            _charHeight = JR.i32(_charHeight + 2)
            if (AndroidUtil.isAndroid()) {
            } else {
                _offsetY = JR.i32(2 + (JR.idiv(JR.i32(_charHeight * 2), 3)))
            }
        }
        var size = JR.length(string)
        var aChar = 0
        var offsetXArray = List.filled(size, 0)
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            aChar = JR.charAt(string, index)
            if (openGLFeatureUtil.isAnyThreed()) {
                offsetXArray[index] = (font.charWidth(aChar) / 2)
            }
            }
        }
        _offsetXArray = offsetXArray
    }
    

    paintVerticle(graphics, string, x, y, anchor) {
        var size = JR.length(string)
        var aChar = 0
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            aChar = JR.charAt(string, index)
            graphics.drawChar(aChar, JR.i32(x + _offsetXArray[index]), JR.i32(JR.i32(y + (JR.i32(_charHeight * index))) + _offsetY), anchor)
            }
        }
    }
    

    drawCenterString(graphics, string, offset, length, x, y) {
        var width = (JR.shr(graphics.getFont().substringWidth(string, offset, length), 1))
        var jerror0 = Fiber.new {
            graphics.drawSubstring(string, offset, length, JR.i32(x - width), y, _anchor)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.put(StringMaker.new().append("Exception: stringLength: ").appendint(JR.length(string)).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString")
        }
    }
    

    drawCenterStrings(graphics, stringArray, maxWidth, x, y) {
        var extraLines = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < stringArray.count))) break
            var string = stringArray[index]
            if ((string != _EMPTY_STRING)) {
                var width = graphics.getFont().stringWidth(string)
                var minTotalLines = 1
                if ((width > maxWidth)) {
                    minTotalLines = JR.i32((JR.idiv(width, maxWidth)) + 1)
                }
                var linePortion = JR.idiv(JR.length(string), minTotalLines)
                var offset = 0
                var currentLength = linePortion
                var size = JR.length(string)
                while ((offset < size)) {
                    if ((JR.i32(offset + currentLength) > size)) {
                        currentLength = JR.i32(size - offset)
                    }
                    if ((JR.i32(offset + currentLength) != size)) {
                        while (((currentLength > 0) && (stringArray[index].charAt(JR.i32(offset + currentLength)) != " ".bytes[0]))) {
                            currentLength = JR.i32(currentLength - 1)
                        }
                        if ((currentLength <= 4)) {
                            currentLength = linePortion
                        }
                    }
                    this.drawCenterString(graphics, string, offset, currentLength, x, JR.i32(y + (JR.i32((JR.i32(index + Fn.new {
var jold = extraLines
extraLines = JR.i32(jold + 1)
return jold
}.call())) * _charHeight))))
                    offset = JR.i32(offset + currentLength)
                    currentLength = linePortion
                }
                extraLines = JR.i32(extraLines - 1)
            }
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

