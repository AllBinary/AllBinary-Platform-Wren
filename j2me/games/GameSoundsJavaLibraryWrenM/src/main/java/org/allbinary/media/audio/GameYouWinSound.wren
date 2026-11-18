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
import "./CompositeSound" for CompositeSound

//Use 8hz16bitmono for most J2ME
class GameYouWinSound is CompositeSound {
    static soundInterface {
    if (__soundInterface_set == null) {
      __soundInterface_set = true
      __soundInterface = GameYouWinSound.new()
    }
    return __soundInterface
  }
  static soundInterface=(value) {
    __soundInterface_set = true
    __soundInterface = value
  }

  initFields_GameYouWinSound() {
  }
    

    construct new() {
        super("resource:/wav/youwin.wav")
    }
    

    static getInstance() {
        return GameYouWinSound.soundInterface
    }
}

import "./Sound" for Sound

