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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "./PlayerGameInput" for PlayerGameInput

class GameInputProcessorComposite is PlayerGameInput {
  name { _name }
  name=(value) { _name = value }
  gameInputProcessorInterface { _gameInputProcessorInterface }
  gameInputProcessorInterface=(value) { _gameInputProcessorInterface = value }
  NAME_LABEL { _NAME_LABEL }
  NAME_LABEL=(value) { _NAME_LABEL = value }

  initFields_GameInputProcessorComposite() {
    _name = null
    _gameInputProcessorInterface = null
    _NAME_LABEL = null
        
        
        _NAME_LABEL = " GameInputProcessorInterface: "
  }
    

    construct new(name, gameInputProcessorInterface) {
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
        initFields_GameInputProcessorComposite()
        _name = name
        _gameInputProcessorInterface = gameInputProcessorInterface
    }
    

    update() {
        var jerror0 = Fiber.new {
            var list = this.getGameKeyEventList()
            _gameInputProcessorInterface.onInput(list)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        }
    }
    

    toString() {
        return StringMaker.new().append(super.toString()).append(_NAME_LABEL).append(_name).toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameInputProcessorInterface" for GameInputProcessorInterface

