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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR
import "./BaseSoundsFactory" for BaseSoundsFactory

class EarlySoundsFactory is BaseSoundsFactory {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = EarlySoundsFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_EarlySoundsFactory() {
  }

  construct new() {
    super()
    initFields_EarlySoundsFactory()
  }
    

    getSoundInterfaceArray() {
        var soundInterfaceArray = List.filled(2, null)
        var index = 0
        soundInterfaceArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = SelectSound.getInstance()
        soundInterfaceArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = ErrorSound.getInstance()
        return soundInterfaceArray
    }
    

    static getInstance() {
        return EarlySoundsFactory.instance
    }
}

import "./Sound" for Sound
import "./SelectSound" for SelectSound
import "./ErrorSound" for ErrorSound

