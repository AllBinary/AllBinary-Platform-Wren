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
// package org.allbinary.input.motion

import "../../../../allbinary_java" for JObject, JException, JR

class AllMotionRecognizer is JObject {
    static index {
    if (__index_set == null) {
      __index_set = true
      __index = 0
    }
    return __index
  }
  static index=(value) {
    __index_set = true
    __index = value
  }
  id { _id }
  id=(value) { _id = value }

  initFields_AllMotionRecognizer() {
    _id = 0
        
  }
    

    construct new() {
    super()
    initFields_AllMotionRecognizer()
        _id = Fn.new {
var jold = AllMotionRecognizer.index
AllMotionRecognizer.index = JR.i32(jold + 1)
return jold
}.call()
    }
    

    processStartMotionEvent(x, y, deviceId, modifiers) {
    }
    

    processEndMotionEvent(x, y, deviceId, modifiers) {
    }
    

    processDraggedMotionEvent(x, y, deviceId, modifiers) {
    }
    

    processMovedMotionEvent(x, y, deviceId, modifiers) {
    }
    

    processScrolledMotionEvent(x, y, deviceId, modifiers) {
    }
    

    getId() {
        return _id
    }
}


