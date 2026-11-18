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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class GameRunnable is JObject {
  WAIT { _WAIT }
  WAIT=(value) { _WAIT = value }
  FAST { _FAST }
  FAST=(value) { _FAST = value }
  waitInMillis { _waitInMillis }
  waitInMillis=(value) { _waitInMillis = value }

  initFields_GameRunnable() {
    _WAIT = 0
    _FAST = 0
    _waitInMillis = 0
        _WAIT = 240
        _FAST = 60
        _waitInMillis = _WAIT
  }
    

    construct new() {
    super()
    initFields_GameRunnable()
    }
    

    run() {
        DisplayInfoSingleton.getInstance().process()
    }
    

    processLoopSleep() {
        Thread.sleep(_waitInMillis)
    }
}

import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../java/lang/Thread" for Thread
import "../../../../../java/lang/Runnable" for Runnable

