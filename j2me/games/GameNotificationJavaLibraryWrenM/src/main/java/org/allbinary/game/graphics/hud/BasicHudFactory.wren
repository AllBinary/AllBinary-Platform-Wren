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
// package org.allbinary.game.graphics.hud

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicHudFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicHudFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DIRECTION_EXCEPTION { _DIRECTION_EXCEPTION }
  DIRECTION_EXCEPTION=(value) { _DIRECTION_EXCEPTION = value }
  VERTICAL { _VERTICAL }
  VERTICAL=(value) { _VERTICAL = value }
  HORIZONTAL { _HORIZONTAL }
  HORIZONTAL=(value) { _HORIZONTAL = value }
  BOTTOMLEFT { _BOTTOMLEFT }
  BOTTOMLEFT=(value) { _BOTTOMLEFT = value }
  BOTTOMRIGHT { _BOTTOMRIGHT }
  BOTTOMRIGHT=(value) { _BOTTOMRIGHT = value }
  TOPLEFT { _TOPLEFT }
  TOPLEFT=(value) { _TOPLEFT = value }
  TOPRIGHT { _TOPRIGHT }
  TOPRIGHT=(value) { _TOPRIGHT = value }
  BOTTOMCENTER { _BOTTOMCENTER }
  BOTTOMCENTER=(value) { _BOTTOMCENTER = value }
  TOPCENTER { _TOPCENTER }
  TOPCENTER=(value) { _TOPCENTER = value }
  ABSOLUTE { _ABSOLUTE }
  ABSOLUTE=(value) { _ABSOLUTE = value }

  initFields_BasicHudFactory() {
    _DIRECTION_EXCEPTION = null
    _VERTICAL = 0
    _HORIZONTAL = 0
    _BOTTOMLEFT = 0
    _BOTTOMRIGHT = 0
    _TOPLEFT = 0
    _TOPRIGHT = 0
    _BOTTOMCENTER = 0
    _TOPCENTER = 0
    _ABSOLUTE = 0
        _DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently"
        _VERTICAL = 0
        _HORIZONTAL = 1
        _BOTTOMLEFT = 0
        _BOTTOMRIGHT = 1
        _TOPLEFT = 2
        _TOPRIGHT = 3
        _BOTTOMCENTER = 4
        _TOPCENTER = 5
        _ABSOLUTE = 6
  }
    

    static getInstance() {
        return BasicHudFactory.instance
    }
    

    construct new() {
    super()
    initFields_BasicHudFactory()
    }
}


