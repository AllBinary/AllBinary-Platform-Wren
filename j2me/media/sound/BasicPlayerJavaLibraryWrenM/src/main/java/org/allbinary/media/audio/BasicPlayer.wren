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

//BasicPlayerJavaLibrary
class BasicPlayer is JObject {
    static CONTROL_TYPE {
    if (__CONTROL_TYPE_set == null) {
      __CONTROL_TYPE_set = true
      __CONTROL_TYPE = "ToneControl"
    }
    return __CONTROL_TYPE
  }
  static CONTROL_TYPE=(value) {
    __CONTROL_TYPE_set = true
    __CONTROL_TYPE = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  listenersList { _listenersList }
  listenersList=(value) { _listenersList = value }
  stateP { _stateP }
  stateP=(value) { _stateP = value }
  loopCountP { _loopCountP }
  loopCountP=(value) { _loopCountP = value }

  initFields_BasicPlayer() {
    _commonStrings = null
    _listenersList = null
    _stateP = 0
    _loopCountP = 0
        _commonStrings = CommonStrings.getInstance()
        _listenersList = BasicArrayListD.new()
        _stateP = 0
        _loopCountP = 0
  }
    

    construct new() {
    super()
    initFields_BasicPlayer()
        this.setLoopCount(0)
        this.setState(Player.UNREALIZED)
    }
    

    getContentType() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    getControl(controlType) {
        return NullControl.new()
    }
    

    getControls() {
        return List.filled(0, null)
    }
    

    close() {
    }
    

    addPlayerListener(playerListener) {
        if (!_listenersList.contains(playerListener)) {
            _listenersList.add(playerListener)
        }
    }
    

    removePlayerListener(playerListener) {
        _listenersList.remove(playerListener)
    }
    

    getState() {
        return _stateP
    }
    

    setState(state) {
        _stateP = state
    }
    

    getDuration() {
        return 0
    }
    

    getMediaTime() {
        return 0
    }
    

    deallocate() {
    }
    

    prefetch() {
    }
    

    realize() {
    }
    

    setLoopCount(count) {
        _loopCountP = count
    }
    

    getLoopCount() {
        return _loopCountP
    }
    

    setMediaTime(now) {
        return 0
    }
    

    start() {
        this.setState(Player.STARTED)
    }
    

    stop() {
        this.setState(Player.PREFETCHED)
    }
    

    setVolume(leftVolume, rightVolume) {
    }
}

import "../../../../javax/microedition/media/Control" for Control
import "../../../../javax/microedition/media/MediaException" for MediaException
import "../../../../javax/microedition/media/Player" for Player
import "../../../../javax/microedition/media/PlayerListener" for PlayerListener
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./Controllable2" for Controllable2
import "./NullControl" for NullControl

