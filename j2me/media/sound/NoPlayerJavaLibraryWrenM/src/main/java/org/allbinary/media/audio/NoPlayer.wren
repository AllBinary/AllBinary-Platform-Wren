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
import "./BasicPlayer" for BasicPlayer

class NoPlayer is BasicPlayer {
    static NO_PLAYER {
    if (__NO_PLAYER_set == null) {
      __NO_PLAYER_set = true
      __NO_PLAYER = NoPlayer.new()
    }
    return __NO_PLAYER
  }
  static NO_PLAYER=(value) {
    __NO_PLAYER_set = true
    __NO_PLAYER = value
  }

  initFields_NoPlayer() {
  }
    

    construct new() {
    super()
    initFields_NoPlayer()
    }
    

    close() {
    }
    

    getContentType() {
        return StringUtil.getInstance().NULL_STRING
    }
    

    getControl(controlType) {
        return NullControl.new()
    }
    

    getControls() {
        return List.filled(0, null)
    }
}

import "../../../../javax/microedition/media/Control" for Control
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./NullControl" for NullControl

