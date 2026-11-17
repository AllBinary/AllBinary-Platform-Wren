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
// package org.allbinary.logic.util.event

import "../../../../../allbinary_java" for JObject, JException, JR

class AllBinaryEventObject is JObject {
    static NULL_EVENT {
    if (__NULL_EVENT_set == null) {
      __NULL_EVENT_set = true
      __NULL_EVENT = AllBinaryEventObject.new(NullUtil.getInstance().NULL_OBJECT)
    }
    return __NULL_EVENT
  }
  static NULL_EVENT=(value) {
    __NULL_EVENT_set = true
    __NULL_EVENT = value
  }
  source { _source }
  source=(value) { _source = value }

  initFields_AllBinaryEventObject() {
    _source = null
        
  }
    

    construct new(anyType) {
    super()
    initFields_AllBinaryEventObject()
        _source = anyType
    }
    

    getSource() {
        return _source
    }
    

    setSource(source) {
        _source = source
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil

