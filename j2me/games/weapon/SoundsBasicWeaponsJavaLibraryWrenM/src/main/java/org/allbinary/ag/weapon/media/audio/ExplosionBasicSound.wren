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
// package org.allbinary.ag.weapon.media.audio

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/media/audio/CompositeSound" for CompositeSound

class ExplosionBasicSound is CompositeSound {
    static soundInterface {
    if (__soundInterface_set == null) {
      __soundInterface_set = true
      __soundInterface = ExplosionBasicSound.new()
    }
    return __soundInterface
  }
  static soundInterface=(value) {
    __soundInterface_set = true
    __soundInterface = value
  }

  initFields_ExplosionBasicSound() {
  }
    

    construct new() {
        super("resource:/wav/explosion.wav")
    }
    

    static getInstance() {
        return ExplosionBasicSound.soundInterface
    }
}

import "../../../../../../org/allbinary/media/audio/Sound" for Sound

