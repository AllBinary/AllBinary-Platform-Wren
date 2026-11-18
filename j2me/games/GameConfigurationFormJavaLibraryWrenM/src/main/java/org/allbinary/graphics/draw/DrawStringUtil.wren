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

class DrawStringUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DrawStringUtil.new()
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

  initFields_DrawStringUtil() {
    _EMPTY_STRING = null
    _anchor = 0
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        _anchor = Anchor.TOP_LEFT
  }

  construct new() {
    super()
    initFields_DrawStringUtil()
  }
    

    static getInstance() {
        return DrawStringUtil.instance
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
    

    drawCenterStrings(graphics, stringArray, maxWidth, charHeight, x, y) {
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
}.call())) * charHeight))))
                    offset = JR.i32(offset + currentLength)
                    currentLength = linePortion
                }
                extraLines = JR.i32(extraLines - 1)
            }
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

