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
// package org.allbinary.game

import "../../../allbinary_java" for JObject, JException, JR

class GameMode is JObject {
    static NONE {
    if (__NONE_set == null) {
      __NONE_set = true
      __NONE = GameMode.new(StringUtil.getInstance().NULL_STRING)
    }
    return __NONE
  }
  static NONE=(value) {
    __NONE_set = true
    __NONE = value
  }
    static SERVER {
    if (__SERVER_set == null) {
      __SERVER_set = true
      __SERVER = GameMode.new("Server")
    }
    return __SERVER
  }
  static SERVER=(value) {
    __SERVER_set = true
    __SERVER = value
  }
    static CLIENT {
    if (__CLIENT_set == null) {
      __CLIENT_set = true
      __CLIENT = GameMode.new("Client")
    }
    return __CLIENT
  }
  static CLIENT=(value) {
    __CLIENT_set = true
    __CLIENT = value
  }
  name { _name }
  name=(value) { _name = value }

  initFields_GameMode() {
    _name = null
        _name = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(name) {
    super()
    initFields_GameMode()
        this.setName(name)
    }
    

    setName(name) {
        _name = name
    }
    

    getName() {
        return _name
    }
    

    toString() {
        return this.getName()
    }
}

import "../../../org/allbinary/logic/string/StringUtil" for StringUtil

