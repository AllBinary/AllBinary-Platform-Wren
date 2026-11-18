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

class TouchFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TouchFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  TOUCH_ENABLED { _TOUCH_ENABLED }
  TOUCH_ENABLED=(value) { _TOUCH_ENABLED = value }
  SHOW_SCREEN_BUTTONS { _SHOW_SCREEN_BUTTONS }
  SHOW_SCREEN_BUTTONS=(value) { _SHOW_SCREEN_BUTTONS = value }
  AUTO_HIDE_SHOW_SCREEN_BUTTONS { _AUTO_HIDE_SHOW_SCREEN_BUTTONS }
  AUTO_HIDE_SHOW_SCREEN_BUTTONS=(value) { _AUTO_HIDE_SHOW_SCREEN_BUTTONS = value }
  HIDE_SCREEN_BUTTONS { _HIDE_SCREEN_BUTTONS }
  HIDE_SCREEN_BUTTONS=(value) { _HIDE_SCREEN_BUTTONS = value }

  initFields_TouchFeatureFactory() {
    _TOUCH_ENABLED = null
    _SHOW_SCREEN_BUTTONS = null
    _AUTO_HIDE_SHOW_SCREEN_BUTTONS = null
    _HIDE_SCREEN_BUTTONS = null
        _TOUCH_ENABLED = TouchFeature.new("Touch Enabled")
        _SHOW_SCREEN_BUTTONS = TouchFeature.new("Show")
        _AUTO_HIDE_SHOW_SCREEN_BUTTONS = TouchFeature.new("Auto Hide (One Level)")
        _HIDE_SCREEN_BUTTONS = TouchFeature.new("Hide")
  }
    

    static getInstance() {
        return TouchFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_TouchFeatureFactory()
    }
}

import "./TouchFeature" for TouchFeature

