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
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas" for GameCommandCanvas

class CustomTextBox is GameCommandCanvas {
  textFieldItem { _textFieldItem }
  textFieldItem=(value) { _textFieldItem = value }
  inputFactory { _inputFactory }
  inputFactory=(value) { _inputFactory = value }

  initFields_CustomTextBox() {
    _textFieldItem = null
    _inputFactory = null
        
        _inputFactory = InputFactory.getInstance()
  }
    

    construct new(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor) {
        super(cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        initFields_CustomTextBox()
        var stringUtil = StringUtil.getInstance()
        var textFieldItem = ABTextFieldItem.new(this, TextItemVisitor.new(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        textFieldItem.setString(text)
        _textFieldItem = textFieldItem
        this.setTitle(label)
    }
    

    submit() {
    }
    

    onEventRaw(keyCode, deviceId, repeated) {
        this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).appendint(keyCode).toString(), this, "onEvent")
        this.keyPressedByDevice(keyCode, deviceId)
    }
    

    keyPressed(keyCode) {
        this.keyPressedByDevice(keyCode, 0)
    }
    

    keyReleased(keyCode) {
        this.keyReleasedByDevice(keyCode, 0)
    }
    

    keyRepeated(keyCode) {
        this.keyRepeatedByDevice(keyCode, 0)
    }
    

    keyPressedByDevice(keyCode, deviceId) {
        var jerror0 = Fiber.new {
            this.logUtil.putF(StringMaker.new().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED)
            var platformKeyFactory = PlatformKeyFactory.getInstance()
            var input = _inputFactory.getInstanceById(keyCode)
            if (platformKeyFactory.isSubmission(input)) {
                this.submit()
            } else {
                _textFieldItem.keyPressed(keyCode)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.KEY_PRESSED, e)
        }
    }
    

    keyReleasedByDevice(keyCode, deviceId) {
    }
    

    paint(graphics) {
        graphics.setColor(this.backgroundColor)
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight())
        graphics.setColor(this.foregroundColor)
        if (!J2MEUtil.isJ2ME()) {
            graphics.drawString(this.getTitle(), 8, 1, 0)
        }
        this.paintXY(graphics, 8, (graphics.getFont().getHeight() + 2))
        super.paint(graphics)
    }
    

    paintXY(graphics, x, y) {
        _textFieldItem.paintXY(graphics, x, y)
    }
    

    getTextFieldItem() {
        return _textFieldItem
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/game/input/PlatformKeyFactory" for PlatformKeyFactory
import "../../../../../org/allbinary/game/input/event/RawKeyEventListener" for RawKeyEventListener
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/form/item/validation/TextItemVisitor" for TextItemVisitor
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./ABTextFieldItem" for ABTextFieldItem

