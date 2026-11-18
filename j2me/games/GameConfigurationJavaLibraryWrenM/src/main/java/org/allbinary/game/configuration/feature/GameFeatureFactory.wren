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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class GameFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SOUND { _SOUND }
  SOUND=(value) { _SOUND = value }
  MUSIC { _MUSIC }
  MUSIC=(value) { _MUSIC = value }
  SCREEN_SHAKE { _SCREEN_SHAKE }
  SCREEN_SHAKE=(value) { _SCREEN_SHAKE = value }
  POST_IMAGE_LOADING_MODIFICATION { _POST_IMAGE_LOADING_MODIFICATION }
  POST_IMAGE_LOADING_MODIFICATION=(value) { _POST_IMAGE_LOADING_MODIFICATION = value }
  HEALTH_BARS { _HEALTH_BARS }
  HEALTH_BARS=(value) { _HEALTH_BARS = value }
  DAMAGE_FLOATERS { _DAMAGE_FLOATERS }
  DAMAGE_FLOATERS=(value) { _DAMAGE_FLOATERS = value }
  GAME_INPUT_LAYER_PROCESSOR { _GAME_INPUT_LAYER_PROCESSOR }
  GAME_INPUT_LAYER_PROCESSOR=(value) { _GAME_INPUT_LAYER_PROCESSOR = value }
  ARTIFICIAL_INTELLEGENCE_PROCESSOR { _ARTIFICIAL_INTELLEGENCE_PROCESSOR }
  ARTIFICIAL_INTELLEGENCE_PROCESSOR=(value) { _ARTIFICIAL_INTELLEGENCE_PROCESSOR = value }
  COLLIDABLE_INTERFACE_LAYER_PROCESSOR { _COLLIDABLE_INTERFACE_LAYER_PROCESSOR }
  COLLIDABLE_INTERFACE_LAYER_PROCESSOR=(value) { _COLLIDABLE_INTERFACE_LAYER_PROCESSOR = value }
  TICKABLE_LAYER_PROCESSOR { _TICKABLE_LAYER_PROCESSOR }
  TICKABLE_LAYER_PROCESSOR=(value) { _TICKABLE_LAYER_PROCESSOR = value }
  CHEATING { _CHEATING }
  CHEATING=(value) { _CHEATING = value }
  DROPPED_ITEMS { _DROPPED_ITEMS }
  DROPPED_ITEMS=(value) { _DROPPED_ITEMS = value }
  DROPPED_ITEMS_FROM_DEATH { _DROPPED_ITEMS_FROM_DEATH }
  DROPPED_ITEMS_FROM_DEATH=(value) { _DROPPED_ITEMS_FROM_DEATH = value }
  TEST_DESTROYED_LAYER_PROCESSOR { _TEST_DESTROYED_LAYER_PROCESSOR }
  TEST_DESTROYED_LAYER_PROCESSOR=(value) { _TEST_DESTROYED_LAYER_PROCESSOR = value }
  COLLISIONS_WITH_SOURCE { _COLLISIONS_WITH_SOURCE }
  COLLISIONS_WITH_SOURCE=(value) { _COLLISIONS_WITH_SOURCE = value }
  COLLISIONS_FORCED_TWO_DIMENSIONAL { _COLLISIONS_FORCED_TWO_DIMENSIONAL }
  COLLISIONS_FORCED_TWO_DIMENSIONAL=(value) { _COLLISIONS_FORCED_TWO_DIMENSIONAL = value }

  initFields_GameFeatureFactory() {
    _SOUND = null
    _MUSIC = null
    _SCREEN_SHAKE = null
    _POST_IMAGE_LOADING_MODIFICATION = null
    _HEALTH_BARS = null
    _DAMAGE_FLOATERS = null
    _GAME_INPUT_LAYER_PROCESSOR = null
    _ARTIFICIAL_INTELLEGENCE_PROCESSOR = null
    _COLLIDABLE_INTERFACE_LAYER_PROCESSOR = null
    _TICKABLE_LAYER_PROCESSOR = null
    _CHEATING = null
    _DROPPED_ITEMS = null
    _DROPPED_ITEMS_FROM_DEATH = null
    _TEST_DESTROYED_LAYER_PROCESSOR = null
    _COLLISIONS_WITH_SOURCE = null
    _COLLISIONS_FORCED_TWO_DIMENSIONAL = null
        _SOUND = GameFeature.new("Sound")
        _MUSIC = GameFeature.new("Music")
        _SCREEN_SHAKE = Feature.new("Screen Shake")
        _POST_IMAGE_LOADING_MODIFICATION = Feature.new("Post Image Loading Modification (Scaling, Rotation, or Other)")
        _HEALTH_BARS = GameFeature.new("Health Bars")
        _DAMAGE_FLOATERS = GameFeature.new("Damage Floaters")
        _GAME_INPUT_LAYER_PROCESSOR = GameFeature.new("Game Input Layer Processor")
        _ARTIFICIAL_INTELLEGENCE_PROCESSOR = GameFeature.new("Artificial Intelligence Layer Processor")
        _COLLIDABLE_INTERFACE_LAYER_PROCESSOR = GameFeature.new("Collidable Interface Layer Processor")
        _TICKABLE_LAYER_PROCESSOR = GameFeature.new("Tickable Layer Processor")
        _CHEATING = GameFeature.new("Cheating")
        _DROPPED_ITEMS = GameFeature.new("Drops")
        _DROPPED_ITEMS_FROM_DEATH = GameFeature.new("Drops from Dead")
        _TEST_DESTROYED_LAYER_PROCESSOR = GameFeature.new("Destroyed Layer Processor")
        _COLLISIONS_WITH_SOURCE = GameFeature.new("Allow Collisions With Source")
        _COLLISIONS_FORCED_TWO_DIMENSIONAL = GameFeature.new("Collisions Forced Two Dimensional")
  }
    

    static getInstance() {
        return GameFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_GameFeatureFactory()
    }
}

import "./GameFeature" for GameFeature
import "./Feature" for Feature

