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

class CollidableAlwaysPickupNeverCollideBehaviorFactory is CollidableBaseBehaviorFactory {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = CollidableAlwaysPickupNeverCollideBehaviorFactory.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }
  instance { _instance }
  instance=(value) { _instance = value }

  initFields_CollidableAlwaysPickupNeverCollideBehaviorFactory() {
    _instance = null
        _instance = CollidableAlwaysPickupNeverCollideBehavior.new()
  }

  construct new() {
    super()
    initFields_CollidableAlwaysPickupNeverCollideBehaviorFactory()
  }
    

    static getInstance() {
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC
    }
    

    createBehavior() {
        return _instance
    }
}

import "./CollidableAlwaysPickupNeverCollideBehavior" for CollidableAlwaysPickupNeverCollideBehavior
import "./CollidableBaseBehavior" for CollidableBaseBehavior

