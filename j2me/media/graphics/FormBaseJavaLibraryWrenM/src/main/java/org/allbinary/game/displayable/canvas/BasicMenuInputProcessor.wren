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
import "../../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput

class BasicMenuInputProcessor is PlayerGameInput {
  motionGestureEventList { _motionGestureEventList }
  motionGestureEventList=(value) { _motionGestureEventList = value }
  canvas { _canvas }
  canvas=(value) { _canvas = value }

  initFields_BasicMenuInputProcessor() {
    _motionGestureEventList = null
    _canvas = null
        _motionGestureEventList = BasicArrayListD.new()
        _canvas = NullCanvas.NULL_CANVAS
  }
    

    construct new(gameKeyEventList, playerInputId, gameCanvas) {
        super(gameKeyEventList, BasicArrayListD.new(), playerInputId)
        initFields_BasicMenuInputProcessor()
        _canvas = gameCanvas
    }
    

    onMotionGestureEvent(motionGestureEvent) {
        _motionGestureEventList.add(motionGestureEvent)
    }
    

    onScrolledMotionGestureEvent(motionGestureEvent) {
    }
    

    setCanvas(canvas) {
        _canvas = canvas
    }
    

    getCanvas() {
        return _canvas
    }
    

    processInputList() {
        return -1
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener" for BaseMotionGestureEventListener
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

