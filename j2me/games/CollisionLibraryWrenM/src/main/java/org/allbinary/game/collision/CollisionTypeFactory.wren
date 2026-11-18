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

class CollisionTypeFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = CollisionTypeFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  DAMAGE { _DAMAGE }
  DAMAGE=(value) { _DAMAGE = value }
  PICKUP { _PICKUP }
  PICKUP=(value) { _PICKUP = value }
  COLLISION { _COLLISION }
  COLLISION=(value) { _COLLISION = value }

  initFields_CollisionTypeFactory() {
    _NONE = null
    _DAMAGE = null
    _PICKUP = null
    _COLLISION = null
        _NONE = CollisionType.new("None")
        _DAMAGE = CollisionType.new("Damage")
        _PICKUP = CollisionType.new("Pickup")
        _COLLISION = CollisionType.new("Collision")
  }

  construct new() {
    super()
    initFields_CollisionTypeFactory()
  }
    

    static getInstance() {
        return CollisionTypeFactory.SINGLETON
    }
}

import "./CollisionType" for CollisionType

