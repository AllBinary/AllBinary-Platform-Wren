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
import "./Input" for Input

class J2MEGameKey is Input {

  initFields_J2MEGameKey() {
  }
    

    construct new(key, keyName) {
        super(key, keyName)
        var id = this.getId()
        if ((id >= 0)) {
            var inputFactory = InputFactory.getInstance()
            inputFactory.add(id, this)
        }
    }
    

    toString() {
        return StringMaker.new().append("J2MEGameKey: ").append(super.toString()).toString()
    }
    

    static getString(keyCode) {
        var input = InputFactory.getInstance().getInstanceById(keyCode)
        if ((input != null)) {
            return input.getName()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./InputFactory" for InputFactory

