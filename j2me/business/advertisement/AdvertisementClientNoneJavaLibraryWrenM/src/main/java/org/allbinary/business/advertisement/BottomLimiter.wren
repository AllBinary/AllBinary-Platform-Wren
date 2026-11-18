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
// package org.allbinary.business.advertisement

import "../../../../allbinary_java" for JObject, JException, JR

class BottomLimiter is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BottomLimiter.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  bottom { _bottom }
  bottom=(value) { _bottom = value }
  deltaY { _deltaY }
  deltaY=(value) { _deltaY = value }
  lower { _lower }
  lower=(value) { _lower = value }
  higher { _higher }
  higher=(value) { _higher = value }

  initFields_BottomLimiter() {
    _bottom = 0
    _deltaY = 0
    _lower = 0
    _higher = 0
        _bottom = 0
        _deltaY = 0
        _lower = 0
        _higher = 0
  }
    

    static getInstance() {
        return BottomLimiter.instance
    }
    

    construct new() {
    super()
    initFields_BottomLimiter()
    }
    

    init(lower, higher) {
        _lower = lower
        _higher = higher
    }
    

    update() {
        var displayInfo = DisplayInfoSingleton.getInstance()
        var gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        if (gameAdState.isShowingAt()) {
            _deltaY = _higher
        } else {
            _deltaY = _lower
        }
        _bottom = (displayInfo.getLastHeight() - _deltaY)
    }
    

    getDeltaY() {
        return _deltaY
    }
    

    getBottom() {
        return _bottom
    }
}

import "../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "./GameAdStateFactory" for GameAdStateFactory

