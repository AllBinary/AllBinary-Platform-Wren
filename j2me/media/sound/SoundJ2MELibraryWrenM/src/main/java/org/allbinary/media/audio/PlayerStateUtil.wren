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

class PlayerStateUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PlayerStateUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  UNREALIZED { _UNREALIZED }
  UNREALIZED=(value) { _UNREALIZED = value }
  REALIZED { _REALIZED }
  REALIZED=(value) { _REALIZED = value }
  PREFETCHED { _PREFETCHED }
  PREFETCHED=(value) { _PREFETCHED = value }
  STARTED { _STARTED }
  STARTED=(value) { _STARTED = value }
  CLOSED { _CLOSED }
  CLOSED=(value) { _CLOSED = value }

  initFields_PlayerStateUtil() {
    _commonStrings = null
    _UNREALIZED = null
    _REALIZED = null
    _PREFETCHED = null
    _STARTED = null
    _CLOSED = null
        _commonStrings = CommonStrings.getInstance()
        _UNREALIZED = "UNREALIZED"
        _REALIZED = "REALIZED"
        _PREFETCHED = "PREFETCHED"
        _STARTED = "STARTED"
        _CLOSED = "CLOSED"
  }

  construct new() {
    super()
    initFields_PlayerStateUtil()
  }
    

    static getInstance() {
        return PlayerStateUtil.instance
    }
    

    convert(state) {
        if ((state == Player.UNREALIZED)) {
            return _UNREALIZED
        } else if ((state == Player.REALIZED)) {
            return _REALIZED
        } else if ((state == Player.PREFETCHED)) {
            return _PREFETCHED
        } else if ((state == Player.STARTED)) {
            return _STARTED
        } else if ((state == Player.CLOSED)) {
            return _CLOSED
        }
        return _commonStrings.UNKNOWN
    }
}

import "../../../../javax/microedition/media/Player" for Player
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

