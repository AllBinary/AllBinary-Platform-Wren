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

class LayerCollisionUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LayerCollisionUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  collisionProcessor { _collisionProcessor }
  collisionProcessor=(value) { _collisionProcessor = value }

  initFields_LayerCollisionUtil() {
    _collisionProcessor = null
        _collisionProcessor = null
  }
    

    static getInstance() {
        return LayerCollisionUtil.instance
    }
    

    construct new() {
    super()
    initFields_LayerCollisionUtil()
        var features = Features.getInstance()
        var gameFeatureFactory = GameFeatureFactory.getInstance()
        if ((OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL))) {
            _collisionProcessor = CollisionThreedProcessor.new()
        } else {
            _collisionProcessor = Collision2DProcessor.new()
        }
    }
    

    isCollision(myLayer, myLayer2) {
        return _collisionProcessor.isCollision(myLayer, myLayer2)
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./CollisionProcessor" for CollisionProcessor
import "./Collision2DProcessor" for Collision2DProcessor
import "./CollisionThreedProcessor" for CollisionThreedProcessor

