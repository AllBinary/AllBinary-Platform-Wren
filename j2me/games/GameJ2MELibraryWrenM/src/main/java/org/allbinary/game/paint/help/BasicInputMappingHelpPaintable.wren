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

class BasicInputMappingHelpPaintable is HelpPaintable {
  gameInputMappingArray { _gameInputMappingArray }
  gameInputMappingArray=(value) { _gameInputMappingArray = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }

  initFields_BasicInputMappingHelpPaintable() {
    _gameInputMappingArray = null
    _NONE = null
        
        _NONE = GameKeyFactory.getInstance().NONE
  }
    

    construct new(gameInputMappingArray, basicColor) {
        super("Help Screen", BasicColorFactory.getInstance().BLACK, basicColor)
        initFields_BasicInputMappingHelpPaintable()
        _gameInputMappingArray = gameInputMappingArray
        this.update(_NONE, _NONE)
    }
    

    update(selectedGameKey, selectedInput) {
        var gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        var EQUAL = " = "
        var stringMaker = StringMaker.new()
        var size = _gameInputMappingArray.count
        var keyInfo = List.filled(size, null)
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
            stringMaker.delete(0, stringMaker.length())
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(this.get(list)).toString()
            }
        }
        super.setInputInfoP(keyInfo)
    }
    

    get(keyList) {
        var commonSeps = CommonSeps.getInstance()
        var stringBuffer = StringMaker.new()
        var AND = "and "
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
                    stringBuffer.append(commonSeps.SPACE).append(AND)
                } else {
                    if ((JR.i32(index + 2) == keyList.size())) {
                        stringBuffer.append(commonSeps.COMMA_SEP)
                        stringBuffer.append(AND)
                    } else {
                        stringBuffer.append(commonSeps.COMMA_SEP)
                    }
                }
            }
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../org/allbinary/game/input/mapping/GameInputMapping" for GameInputMapping
import "../../../../../org/allbinary/game/input/mapping/PersistentInputMapping" for PersistentInputMapping
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

