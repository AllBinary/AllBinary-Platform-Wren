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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class ItemColorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ItemColorFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  INVERT_PAINT { _INVERT_PAINT }
  INVERT_PAINT=(value) { _INVERT_PAINT = value }
  PAINT { _PAINT }
  PAINT=(value) { _PAINT = value }
  TEXT_FIELD_NO_FOCUS { _TEXT_FIELD_NO_FOCUS }
  TEXT_FIELD_NO_FOCUS=(value) { _TEXT_FIELD_NO_FOCUS = value }

  initFields_ItemColorFactory() {
    _INVERT_PAINT = 0
    _PAINT = 0
    _TEXT_FIELD_NO_FOCUS = 0
        _INVERT_PAINT = 0xFF000000
        _PAINT = 0xFFe07718
        _TEXT_FIELD_NO_FOCUS = 0x7F7F7F
  }

  construct new() {
    super()
    initFields_ItemColorFactory()
  }
    

    static getInstance() {
        return ItemColorFactory.instance
    }
}


