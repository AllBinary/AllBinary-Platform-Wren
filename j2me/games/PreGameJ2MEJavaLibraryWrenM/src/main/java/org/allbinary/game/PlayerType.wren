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

class PlayerType is JObject {
  id { _id }
  id=(value) { _id = value }
  name { _name }
  name=(value) { _name = value }

  initFields_PlayerType() {
    _id = 0
    _name = null
        
        _name = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(name, value) {
    super()
    initFields_PlayerType()
        _name = name
        _id = value
    }
    

    getId() {
        return _id
    }
    

    getName() {
        return _name
    }
    

    toString() {
        return this.getName()
    }
}

import "../../../org/allbinary/logic/string/StringUtil" for StringUtil

