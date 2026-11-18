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

class MainFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MainFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  FULL_SCREEN { _FULL_SCREEN }
  FULL_SCREEN=(value) { _FULL_SCREEN = value }
  TITLE_BAR { _TITLE_BAR }
  TITLE_BAR=(value) { _TITLE_BAR = value }
  STATIC { _STATIC }
  STATIC=(value) { _STATIC = value }
  LOAD_ONDEMAND { _LOAD_ONDEMAND }
  LOAD_ONDEMAND=(value) { _LOAD_ONDEMAND = value }
  LOAD_ALL { _LOAD_ALL }
  LOAD_ALL=(value) { _LOAD_ALL = value }

  initFields_MainFeatureFactory() {
    _FULL_SCREEN = null
    _TITLE_BAR = null
    _STATIC = null
    _LOAD_ONDEMAND = null
    _LOAD_ALL = null
        _FULL_SCREEN = Feature.new("Full Screen")
        _TITLE_BAR = Feature.new("Title Bar")
        _STATIC = Feature.new("Static Dependent Feature")
        _LOAD_ONDEMAND = Feature.new("Load OnDemand")
        _LOAD_ALL = Feature.new("Load All")
  }

  construct new() {
    super()
    initFields_MainFeatureFactory()
  }
    

    static getInstance() {
        return MainFeatureFactory.instance
    }
}

import "./Feature" for Feature

