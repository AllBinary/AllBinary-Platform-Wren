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
// package org.allbinary.game.collision

import "../../../../allbinary_java" for JObject, JException, JR
import "./CollidableBaseBehaviorFactory" for CollidableBaseBehaviorFactory

class CollidableNeverCollideBehaviorFactory is CollidableBaseBehaviorFactory {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = CollidableNeverCollideBehaviorFactory.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }
  instance { _instance }
  instance=(value) { _instance = value }

  initFields_CollidableNeverCollideBehaviorFactory() {
    _instance = null
        _instance = CollidableNeverCollideBehavior.new(false)
  }

  construct new() {
    super()
    initFields_CollidableNeverCollideBehaviorFactory()
  }
    

    static getInstance() {
        return CollidableNeverCollideBehaviorFactory.instanceC
    }
    

    createBehavior() {
        return _instance
    }
}

import "./CollidableNeverCollideBehavior" for CollidableNeverCollideBehavior
import "./CollidableBaseBehavior" for CollidableBaseBehavior

