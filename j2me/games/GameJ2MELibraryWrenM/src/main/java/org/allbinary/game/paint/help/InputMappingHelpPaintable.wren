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
// package org.allbinary.game.paint.help

import "../../../../../allbinary_java" for JObject, JException, JR
import "./HelpPaintable" for HelpPaintable

class InputMappingHelpPaintable is HelpPaintable {
    static AND { " and " }
    static SEP { ", " }
    static MORE_THAN_TWO_IN_LIST_AND { ", and " }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  commonSeps { _commonSeps }
  commonSeps=(value) { _commonSeps = value }
  stringUtil { _stringUtil }
  stringUtil=(value) { _stringUtil = value }
  basicColorFactory { _basicColorFactory }
  basicColorFactory=(value) { _basicColorFactory = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }
  gameInputMappingArray { _gameInputMappingArray }
  gameInputMappingArray=(value) { _gameInputMappingArray = value }
  keyMappingArray { _keyMappingArray }
  keyMappingArray=(value) { _keyMappingArray = value }
  actionBasicColor { _actionBasicColor }
  actionBasicColor=(value) { _actionBasicColor = value }
  inputBasicColorArray { _inputBasicColorArray }
  inputBasicColorArray=(value) { _inputBasicColorArray = value }
  selectedBasicColor { _selectedBasicColor }
  selectedBasicColor=(value) { _selectedBasicColor = value }
  updateMyFontProperties { _updateMyFontProperties }
  updateMyFontProperties=(value) { _updateMyFontProperties = value }

  initFields_InputMappingHelpPaintable() {
    _logUtil = null
    _commonStrings = null
    _commonSeps = null
    _stringUtil = null
    _basicColorFactory = null
    _NONE = null
    _EMPTY_STRING = null
    _gameInputMappingArray = null
    _keyMappingArray = null
    _actionBasicColor = null
    _inputBasicColorArray = null
    _selectedBasicColor = null
    _updateMyFontProperties = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _commonSeps = CommonSeps.getInstance()
        _stringUtil = StringUtil.getInstance()
        _basicColorFactory = BasicColorFactory.getInstance()
        _NONE = GameKeyFactory.getInstance().NONE
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        
        _keyMappingArray = List.filled(0, null)
        _actionBasicColor = BasicColorUtil.getInstance().ZERO_ARRAY
        _inputBasicColorArray = JR.listOf(0, Fn.new { List.filled(0, null) })
        _selectedBasicColor = null
        _updateMyFontProperties = UpdateMyFontProperties.new()
  }
    

    construct new(gameInputMappingArray, backgroundBasicColor, basicColor) {
        super("Input Mapping", backgroundBasicColor, basicColor)
        initFields_InputMappingHelpPaintable()
        _gameInputMappingArray = gameInputMappingArray
        this.update(_NONE, _NONE)
        if (((backgroundBasicColor == _basicColorFactory.WHITE) || (basicColor == _basicColorFactory.WHITE))) {
            _selectedBasicColor = _basicColorFactory.RED
        } else {
            _selectedBasicColor = _basicColorFactory.WHITE
        }
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        var updateMyFontProperties = UpdateMyFontProperties.new()
        updateMyFontProperties.charHeight = font.getHeight()
        var stringMaker = StringMaker.new()
        var inputInfo = this.inputInfo
        var size = inputInfo.count
        updateMyFontProperties.actionStringArray = List.filled(size, null)
        updateMyFontProperties.keymappingBeginWidthArray = List.filled(size, 0)
        updateMyFontProperties.actionStringDeltaXArray = List.filled(size, 0)
        updateMyFontProperties.inputDeltaXArray = JR.listOf(size, Fn.new { List.filled(0, 0) })
        updateMyFontProperties.sepArray = JR.listOf(size, Fn.new { List.filled(0, null) })
        updateMyFontProperties.sepWidthArray = JR.listOf(size, Fn.new { List.filled(0, 0) })
        var list = null
        var keyMappings = null
        var actionString = null
        var input = null
        var size2 = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            list = _keyMappingArray[index]
            keyMappings = this.get(list)
            stringMaker.delete(0, stringMaker.length())
            actionString = stringMaker.append(inputInfo[index]).append(_commonSeps.COLON).append(_commonSeps.SPACE).append(_commonSeps.SPACE).toString()
            updateMyFontProperties.actionStringArray[index] = actionString
            stringMaker.delete(0, stringMaker.length())
            updateMyFontProperties.keymappingBeginWidthArray[index] = (JR.shr(font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).toString()), 1))
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString)
            size2 = list.size()
            updateMyFontProperties.inputDeltaXArray[index] = List.filled(size2, 0)
            updateMyFontProperties.sepArray[index] = List.filled(size2, null)
            updateMyFontProperties.sepWidthArray[index] = List.filled(size2, 0)
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size2))) break
                input = list.objectArray[index2]
                updateMyFontProperties.inputDeltaXArray[index][index2] = font.stringWidth(input.getName())
                updateMyFontProperties.sepArray[index][index2] = _EMPTY_STRING
                if ((JR.i32(index2 + 1) < list.size())) {
                    if ((list.size() == 2)) {
                        updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.AND
                    } else {
                        if ((JR.i32(index2 + 2) == list.size())) {
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND
                        } else {
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.SEP
                        }
                    }
                }
                if ((updateMyFontProperties.sepArray[index][index2] != _EMPTY_STRING)) {
                    updateMyFontProperties.sepWidthArray[index][index2] = font.stringWidth(updateMyFontProperties.sepArray[index][index2])
                }
                }
            }
            }
        }
        _updateMyFontProperties = updateMyFontProperties
        super.updateMeasurement(graphics)
    }
    

    update(selectedGameKey, selectedInput) {
        var stringMaker = StringMaker.new()
        _logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(_stringUtil.toString(selectedGameKey)).append(" Input: ").append(_stringUtil.toString(selectedInput)).toString(), this, _commonStrings.UPDATE)
        var gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        var size = _gameInputMappingArray.count
        var keyInfo = List.filled(size, null)
        var keyMappingArray = List.filled(size, null)
        var actionBasicColor = List.filled(size, null)
        var inputBasicColorArray = List.filled(size, null)
        var gameInputMapping = null
        var gameKey = null
        var list = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            gameInputMapping = _gameInputMappingArray[index]
            gameKey = gameInputMapping.getGameKey()
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey)
            var size2 = list.size()
            inputBasicColorArray[index] = List.filled(size2, null)
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size2))) break
                inputBasicColorArray[index][index2] = this.basicColor
                }
            }
            if ((gameKey == selectedGameKey)) {
                stringMaker.delete(0, stringMaker.length())
                _logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(_stringUtil.toString(selectedGameKey)).toString(), this, _commonStrings.UPDATE)
                actionBasicColor[index] = _selectedBasicColor
                var indexOfSelectedInput = list.indexOf(selectedInput)
                if ((indexOfSelectedInput >= 0)) {
                    stringMaker.delete(0, stringMaker.length())
                    _logUtil.putF(stringMaker.append("Found: selected Input: ").append(_stringUtil.toString(selectedInput)).toString(), this, _commonStrings.UPDATE)
                    inputBasicColorArray[index][indexOfSelectedInput] = _selectedBasicColor
                }
            } else {
                actionBasicColor[index] = this.basicColor
            }
            keyInfo[index] = gameInputMapping.getName()
            keyMappingArray[index] = list
            }
        }
        _keyMappingArray = keyMappingArray
        _actionBasicColor = actionBasicColor
        _inputBasicColorArray = inputBasicColorArray
        super.setInputInfoP(keyInfo)
        this.myFontProcessor = this.updateMyFontProcessor
    }
    

    get(keyList) {
        var stringBuffer = StringMaker.new()
        var key = null
        var size = keyList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            key = keyList.objectArray[index]
            stringBuffer.append(key.getName())
            if ((JR.i32(index + 1) < keyList.size())) {
                if ((keyList.size() == 2)) {
                    stringBuffer.append(InputMappingHelpPaintable.AND)
                } else {
                    if ((JR.i32(index + 2) == keyList.size())) {
                        stringBuffer.append(InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND)
                    } else {
                        stringBuffer.append(InputMappingHelpPaintable.SEP)
                    }
                }
            }
            }
        }
        return stringBuffer.toString()
    }
    

    paint(graphics) {
        this.myFontProcessor.process(graphics)
        var halfWidth = this.displayInfo.getLastHalfWidth()
        graphics.setColor(this.basicColor.intValue())
        graphics.drawString(this.title, (halfWidth - this.titleBeginWidth), _updateMyFontProperties.charHeight, this.anchor)
        var inputInfo = this.inputInfo
        var size = inputInfo.count
        var y = 0
        var deltaX = 0
        var size2 = 0
        var actionString = null
        var input = null
        var list = null
        var sep = null
        var beginWidth = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            y = ((JR.i32(index + 3)) * _updateMyFontProperties.charHeight)
            deltaX = 0
            list = _keyMappingArray[index]
            size2 = list.size()
            beginWidth = _updateMyFontProperties.keymappingBeginWidthArray[index]
            graphics.setColor(_actionBasicColor[index].intValue())
            actionString = _updateMyFontProperties.actionStringArray[index]
            graphics.drawString(actionString, JR.i32(JR.i32(halfWidth - beginWidth) + deltaX), y, this.anchor)
            deltaX = JR.i32(deltaX + _updateMyFontProperties.actionStringDeltaXArray[index])
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size2))) break
                input = list.objectArray[index2]
                graphics.setColor(_inputBasicColorArray[index][index2].intValue())
                graphics.drawString(input.getName(), JR.i32(JR.i32(halfWidth - beginWidth) + deltaX), y, this.anchor)
                deltaX = JR.i32(deltaX + _updateMyFontProperties.inputDeltaXArray[index][index2])
                sep = _updateMyFontProperties.sepArray[index][index2]
                graphics.setColor(this.basicColor.intValue())
                graphics.drawString(sep, JR.i32(JR.i32(halfWidth - beginWidth) + deltaX), y, this.anchor)
                deltaX = JR.i32(deltaX + _updateMyFontProperties.sepWidthArray[index][index2])
                }
            }
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../org/allbinary/game/input/mapping/GameInputMapping" for GameInputMapping
import "../../../../../org/allbinary/game/input/mapping/PersistentInputMapping" for PersistentInputMapping
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorUtil" for BasicColorUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./UpdateMyFontProperties" for UpdateMyFontProperties

