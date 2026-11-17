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
// package org.allbinary.logic.java.characters

import "../../../../../allbinary_java" for JObject, JException, JR

class CharacterSetData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CharacterSetData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  US_ASCII { _US_ASCII }
  US_ASCII=(value) { _US_ASCII = value }
  ISO_8859_1 { _ISO_8859_1 }
  ISO_8859_1=(value) { _ISO_8859_1 = value }
  UTF_8 { _UTF_8 }
  UTF_8=(value) { _UTF_8 = value }
  UTF_16 { _UTF_16 }
  UTF_16=(value) { _UTF_16 = value }
  UTF_16BE { _UTF_16BE }
  UTF_16BE=(value) { _UTF_16BE = value }
  UTF_16LE { _UTF_16LE }
  UTF_16LE=(value) { _UTF_16LE = value }

  initFields_CharacterSetData() {
    _US_ASCII = null
    _ISO_8859_1 = null
    _UTF_8 = null
    _UTF_16 = null
    _UTF_16BE = null
    _UTF_16LE = null
        _US_ASCII = "US-ASCII"
        _ISO_8859_1 = "ISO-8859-1"
        _UTF_8 = "UTF-8"
        _UTF_16 = "UTF-16"
        _UTF_16BE = "UTF-16BE"
        _UTF_16LE = "UTF-16LE"
  }
    

    static getInstance() {
        return CharacterSetData.instance
    }
    

    construct new() {
    super()
    initFields_CharacterSetData()
    }
}


