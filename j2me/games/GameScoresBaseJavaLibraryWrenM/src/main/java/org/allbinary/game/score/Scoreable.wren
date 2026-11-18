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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class Scoreable is JObject {
    static ID {
    if (__ID_set == null) {
      __ID_set = true
      __ID = SmallIntegerSingletonFactory.getInstance().getAt(3)
    }
    return __ID
  }
  static ID=(value) {
    __ID_set = true
    __ID = value
  }
  points { _points }
  points=(value) { _points = value }

  initFields_Scoreable() {
    _points = 0
        
  }
    

    construct new(points) {
    super()
    initFields_Scoreable()
        _points = points
    }
    

    addPoints(points) {
        _points = JR.i32(_points + points)
    }
    

    removePoints(points) {
        _points = JR.i32(_points - points)
    }
    

    setPoints(points) {
        _points = points
    }
    

    getPoints() {
        return _points
    }
}

import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../java/lang/Integer" for Integer
import "./ScoreableInterface" for ScoreableInterface

