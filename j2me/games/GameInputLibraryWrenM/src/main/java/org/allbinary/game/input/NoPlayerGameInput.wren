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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "./PlayerGameInput" for PlayerGameInput

class NoPlayerGameInput is PlayerGameInput {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NoPlayerGameInput.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_NoPlayerGameInput() {
  }
    

    static getInstance() {
        return NoPlayerGameInput.SINGLETON
    }
    

    construct new() {
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
    }
    

    onDownGameKeyEvent(gameKeyEvent) {
    }
    

    onUpGameKeyEvent(gameKeyEvent) {
    }
}

import "../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

