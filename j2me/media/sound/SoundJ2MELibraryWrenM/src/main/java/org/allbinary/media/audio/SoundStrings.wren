/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class SoundStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SoundStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  STOP_ALL { _STOP_ALL }
  STOP_ALL=(value) { _STOP_ALL = value }
  CLOSE_ALL { _CLOSE_ALL }
  CLOSE_ALL=(value) { _CLOSE_ALL = value }
  SOUND { _SOUND }
  SOUND=(value) { _SOUND = value }
  INIT_SOUND { _INIT_SOUND }
  INIT_SOUND=(value) { _INIT_SOUND = value }
  STOPPING_SOUND { _STOPPING_SOUND }
  STOPPING_SOUND=(value) { _STOPPING_SOUND = value }
  CLOSING_SOUND { _CLOSING_SOUND }
  CLOSING_SOUND=(value) { _CLOSING_SOUND = value }

  initFields_SoundStrings() {
    _STOP_ALL = null
    _CLOSE_ALL = null
    _SOUND = null
    _INIT_SOUND = null
    _STOPPING_SOUND = null
    _CLOSING_SOUND = null
        _STOP_ALL = "stopAll"
        _CLOSE_ALL = "closeAll"
        _SOUND = " Sound: "
        _INIT_SOUND = "Initializing Sound: "
        _STOPPING_SOUND = "Stopping Sound: "
        _CLOSING_SOUND = "Closing Sound: "
  }

  construct new() {
    super()
    initFields_SoundStrings()
  }
    

    static getInstance() {
        return SoundStrings.instance
    }
}


