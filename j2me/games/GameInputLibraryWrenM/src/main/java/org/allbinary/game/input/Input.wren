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

class Input is JObject {
  id { _id }
  id=(value) { _id = value }
  name { _name }
  name=(value) { _name = value }

  initFields_Input() {
    _id = 0
    _name = null
        _id = 0
        _name = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(id, name) {
    super()
    initFields_Input()
        this.setId(id)
        this.setName(name)
    }
    

    getId() {
        return _id
    }
    

    setId(key) {
        _id = key
    }
    

    getName() {
        return _name
    }
    

    setName(keyName) {
        _name = keyName
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(this.getName())
        stringBuffer.append(" Id: ")
        stringBuffer.appendint(this.getId())
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

