/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import "./Sound" for Sound

class NoSound is Sound {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoSound.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_NoSound() {
  }
    

    static getInstance() {
        return NoSound.instance
    }
    

    construct new() {
        super(StringUtil.getInstance().EMPTY_STRING)
        this.setPlayerP(NoPlayer.NO_PLAYER)
    }
}

import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./NoPlayer" for NoPlayer

