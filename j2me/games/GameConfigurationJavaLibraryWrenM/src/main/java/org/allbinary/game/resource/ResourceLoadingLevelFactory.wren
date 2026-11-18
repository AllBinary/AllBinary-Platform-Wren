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
// package org.allbinary.game.resource

import "../../../../allbinary_java" for JObject, JException, JR

class ResourceLoadingLevelFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ResourceLoadingLevelFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  LOAD_EARLY { _LOAD_EARLY }
  LOAD_EARLY=(value) { _LOAD_EARLY = value }
  LOAD_TOUCH { _LOAD_TOUCH }
  LOAD_TOUCH=(value) { _LOAD_TOUCH = value }
  LOAD_GAME { _LOAD_GAME }
  LOAD_GAME=(value) { _LOAD_GAME = value }
  LEVEL { _LEVEL }
  LEVEL=(value) { _LEVEL = value }
  MAX_LEVEL { _MAX_LEVEL }
  MAX_LEVEL=(value) { _MAX_LEVEL = value }
  LOAD_ALL { _LOAD_ALL }
  LOAD_ALL=(value) { _LOAD_ALL = value }
  RESOURCE_LOADING_LEVEL_ARRAY { _RESOURCE_LOADING_LEVEL_ARRAY }
  RESOURCE_LOADING_LEVEL_ARRAY=(value) { _RESOURCE_LOADING_LEVEL_ARRAY = value }

  initFields_ResourceLoadingLevelFactory() {
    _LOAD_EARLY = null
    _LOAD_TOUCH = null
    _LOAD_GAME = null
    _LEVEL = null
    _MAX_LEVEL = null
    _LOAD_ALL = null
    _RESOURCE_LOADING_LEVEL_ARRAY = null
        _LOAD_EARLY = ResourceLoadingLevel.new("Load Early", Integer.MAX_VALUE)
        _LOAD_TOUCH = ResourceLoadingLevel.new("Load Touch", JR.i32(Integer.MAX_VALUE - 1))
        _LOAD_GAME = ResourceLoadingLevel.new("Load Game", JR.i32(Integer.MAX_VALUE - 2))
        _LEVEL = ResourceLoadingLevel.new("Level", JR.i32(Integer.MAX_VALUE - 99))
        _MAX_LEVEL = ResourceLoadingLevel.new("Max Level", JR.i32(Integer.MAX_VALUE - 100))
        _LOAD_ALL = ResourceLoadingLevel.new("Load All", -1)
        _RESOURCE_LOADING_LEVEL_ARRAY = [_LOAD_ALL, _MAX_LEVEL, _LEVEL, _LOAD_GAME, _LOAD_TOUCH, _LOAD_EARLY]
  }

  construct new() {
    super()
    initFields_ResourceLoadingLevelFactory()
  }
    

    static getInstance() {
        return ResourceLoadingLevelFactory.instance
    }
    

    getLevelString(level) {
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _RESOURCE_LOADING_LEVEL_ARRAY.count))) break
            if ((level == _RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel())) {
                return _RESOURCE_LOADING_LEVEL_ARRAY[index].getName()
            }
            }
        }
        return JR.str(level)
    }
}

import "../../../../java/lang/Integer" for Integer
import "./ResourceLoadingLevel" for ResourceLoadingLevel

