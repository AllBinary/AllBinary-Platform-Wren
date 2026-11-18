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
import "./BasicMenuInputProcessor" for BasicMenuInputProcessor

class NoMenuInputProcessor is BasicMenuInputProcessor {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NoMenuInputProcessor.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_NoMenuInputProcessor() {
  }
    

    static getInstance() {
        return NoMenuInputProcessor.SINGLETON
    }
    

    construct new() {
        super(BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas.NULL_CANVAS)
    }
    

    onDownGameKeyEvent(gameKeyEvent) {
    }
    

    onUpGameKeyEvent(gameKeyEvent) {
    }
    

    onMotionGestureEvent(motionGestureEvent) {
    }
}

import "../../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

