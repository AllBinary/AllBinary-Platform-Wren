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

class TestInputExample is JObject {
  testValue { _testValue }
  testValue=(value) { _testValue = value }

  initFields_TestInputExample() {
    _testValue = 0
        _testValue = 0
  }

  construct new() {
    super()
    initFields_TestInputExample()
  }
    

    up() {
    }
    

    down() {
    }
    

    left() {
        _testValue = JR.i32(_testValue + 1)
    }
    

    right() {
        _testValue = JR.i32(_testValue - 1)
    }
    

    strafeLeft() {
    }
    

    strafeRight() {
    }
    

    paint(graphics) {
    }
    

    paintThreed(graphics) {
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./TestInputInterface" for TestInputInterface

