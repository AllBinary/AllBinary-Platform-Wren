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

class CommandTextItemArrayFactory is JObject {
  list { _list }
  list=(value) { _list = value }
  visitorInterface { _visitorInterface }
  visitorInterface=(value) { _visitorInterface = value }

  initFields_CommandTextItemArrayFactory() {
    _list = null
    _visitorInterface = null
        _list = BasicArrayListD.new()
        
  }
    

    construct new(visitorInterface) {
    super()
    initFields_CommandTextItemArrayFactory()
        _visitorInterface = visitorInterface
    }
    

    getInstance(vector, backgroundBasicColor, foregroundBasicColor) {
        var vectorUtil = VectorUtil.getInstance()
        var size = vectorUtil.getSize(vector)
        _list.clear()
        var textItem = null
        var priorityLimit = 7
        var displayInfo = DisplayInfoSingleton.getInstance()
        var isLargeEnoughDisplayForBigMenu = (((displayInfo.isPortrait() && (displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH))) || ((!displayInfo.isPortrait() && (displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH))))
        if ((!isLargeEnoughDisplayForBigMenu && (size > 3))) {
            priorityLimit = 3
        }
        var command = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            command = vectorUtil.elementAt(vector, index)
            if ((command.getPriority() < priorityLimit)) {
                var aBoolean = _visitorInterface.visit(command)
                if (aBoolean.booleanValue()) {
                    textItem = CommandTextItem.new(command, ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                    _list.add(textItem)
                }
            }
            }
        }
        var textItemArray = List.filled(_list.size(), null)
        var size2 = textItemArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size2))) break
            textItemArray[index] = _list.objectArray[index]
            }
        }
        return textItemArray
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/ImageItem" for ImageItem
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/form/ScreenInfo" for ScreenInfo
import "../../../../../org/allbinary/logic/VectorUtil" for VectorUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../java/lang/Boolean" for Boolean
import "./CommandTextItem" for CommandTextItem
import "./ABCustomItem" for ABCustomItem

