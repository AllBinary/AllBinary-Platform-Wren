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

class Sound is JObject {
  resource { _resource }
  resource=(value) { _resource = value }
  player { _player }
  player=(value) { _player = value }

  initFields_Sound() {
    _resource = null
    _player = null
        
        _player = NoPlayer.NO_PLAYER
  }
    

    construct new(resource) {
    super()
    initFields_Sound()
        _resource = resource
    }
    

    getResource() {
        return _resource
    }
    

    getPlayerP() {
        return _player
    }
    

    setPlayerP(player) {
        _player = player
    }
    

    init() {
    }
    

    getDuration() {
        return -1
    }
    

    run() {
        var jerror0 = Fiber.new {
            _player.start()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN)
        }
    }
}

import "../../../../javax/microedition/media/Player" for Player
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Runnable" for Runnable
import "./SoundInterface" for SoundInterface
import "./NoPlayer" for NoPlayer

