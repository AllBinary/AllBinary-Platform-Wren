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
// package org.allbinary.game.physics.acceleration

import "../../../../../allbinary_java" for JObject, JException, JR

class GravityUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GravityUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  GAME_GRAVITY_VELOCITY { _GAME_GRAVITY_VELOCITY }
  GAME_GRAVITY_VELOCITY=(value) { _GAME_GRAVITY_VELOCITY = value }
  MAX_GAME_VELOCITY { _MAX_GAME_VELOCITY }
  MAX_GAME_VELOCITY=(value) { _MAX_GAME_VELOCITY = value }

  initFields_GravityUtil() {
    _GAME_GRAVITY_VELOCITY = 0
    _MAX_GAME_VELOCITY = 0
        _GAME_GRAVITY_VELOCITY = 1800
        _MAX_GAME_VELOCITY = 18000
  }

  construct new() {
    super()
    initFields_GravityUtil()
  }
    

    static getInstance() {
        return GravityUtil.instance
    }
    

    process(velocityProperties, customGravity) {
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity)
    }
}

import "../../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties

