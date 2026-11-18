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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR

class DemoGameMidletStateFactory is JObject {
    static STATE {
    if (__STATE_set == null) {
      __STATE_set = true
      __STATE = DemoGameMidletStateFactory.new()
    }
    return __STATE
  }
  static STATE=(value) {
    __STATE_set = true
    __STATE = value
  }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  START_DEMO { _START_DEMO }
  START_DEMO=(value) { _START_DEMO = value }
  START_GAME { _START_GAME }
  START_GAME=(value) { _START_GAME = value }
  START_INPUT_MAPPING { _START_INPUT_MAPPING }
  START_INPUT_MAPPING=(value) { _START_INPUT_MAPPING = value }

  initFields_DemoGameMidletStateFactory() {
    _NONE = null
    _START_DEMO = null
    _START_GAME = null
    _START_INPUT_MAPPING = null
        _NONE = DemoGameMidletState.new()
        _START_DEMO = DemoGameMidletState.new()
        _START_GAME = DemoGameMidletState.new()
        _START_INPUT_MAPPING = DemoGameMidletState.new()
  }
    

    construct new() {
    super()
    initFields_DemoGameMidletStateFactory()
    }
    

    static getInstance() {
        return DemoGameMidletStateFactory.STATE
    }
}

import "./DemoGameMidletState" for DemoGameMidletState

