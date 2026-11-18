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
// package org.allbinary.game.layer.hud.event

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class GameNotificationEvent is AllBinaryEventObject {
  string { _string }
  string=(value) { _string = value }
  seconds { _seconds }
  seconds=(value) { _seconds = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  removeable { _removeable }
  removeable=(value) { _removeable = value }

  initFields_GameNotificationEvent() {
    _string = null
    _seconds = null
    _basicColor = null
    _removeable = null
        _string = StringUtil.getInstance().EMPTY_STRING
        
        _basicColor = BasicColorFactory.getInstance().BLACK
        
  }
    

    construct new(anyType, string, seconds, basicColor, permanent) {
        super(anyType)
        initFields_GameNotificationEvent()
        this.setString(string)
        _seconds = seconds
        this.setBasicColorP(basicColor)
        _removeable = permanent
    }
    

    getString() {
        return _string
    }
    

    getSeconds() {
        return _seconds
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    getPermanent() {
        return _removeable
    }
    

    setString(string) {
        _string = string
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
    }
}

import "../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../java/lang/Integer" for Integer
import "../../../../../../java/lang/Boolean" for Boolean

