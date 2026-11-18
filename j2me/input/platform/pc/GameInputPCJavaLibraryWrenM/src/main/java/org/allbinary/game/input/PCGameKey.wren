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

class PCGameKey is Input {

  initFields_PCGameKey() {
  }
    

    construct new(keyCode, name) {
        super(keyCode, name)
        var id = this.getId()
        if ((id >= 0)) {
            InputFactory.getInstance().add(id, this)
        }
    }
    

    toString() {
        return "PCGameKey: " + super.toString()
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

import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./InputFactory" for InputFactory

