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
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR
import "./BasicArrayListS" for BasicArrayListS

class ImmutableBasicArrayList is BasicArrayListS {
  name { _name }
  name=(value) { _name = value }

  initFields_ImmutableBasicArrayList() {
    _name = null
        
  }
    

    construct new(name, size) {
        super(size)
        initFields_ImmutableBasicArrayList()
        _name = name
    }
    

    add(e) {
        ForcedLogUtil.log(_name, this)
        return true
    }
    

    addAt(index, element) {
        ForcedLogUtil.log(_name, this)
    }
    

    toString() {
        return _name
    }
}

import "../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil

