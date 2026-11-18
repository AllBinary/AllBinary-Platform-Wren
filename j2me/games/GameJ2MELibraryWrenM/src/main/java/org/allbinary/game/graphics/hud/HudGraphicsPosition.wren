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

class HudGraphicsPosition is JObject {
    static NULL_HUD_GRAPHICS_POSITION {
    if (__NULL_HUD_GRAPHICS_POSITION_set == null) {
      __NULL_HUD_GRAPHICS_POSITION_set = true
      __NULL_HUD_GRAPHICS_POSITION = HudGraphicsPosition.new(PointFactory.getInstance().ZERO_ZERO, 9)
    }
    return __NULL_HUD_GRAPHICS_POSITION
  }
  static NULL_HUD_GRAPHICS_POSITION=(value) {
    __NULL_HUD_GRAPHICS_POSITION_set = true
    __NULL_HUD_GRAPHICS_POSITION = value
  }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  point { _point }
  point=(value) { _point = value }

  initFields_HudGraphicsPosition() {
    _anchor = 0
    _point = null
        _anchor = 0
        _point = PointFactory.getInstance().ZERO_ZERO
  }
    

    construct new(point, anchor) {
    super()
    initFields_HudGraphicsPosition()
        this.setAnchor(anchor)
        this.setPoint(point)
    }
    

    getAnchor() {
        return _anchor
    }
    

    setAnchor(anchor) {
        _anchor = anchor
    }
    

    getPoint() {
        return _point
    }
    

    setPoint(point) {
        _point = point
    }
}

import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory

