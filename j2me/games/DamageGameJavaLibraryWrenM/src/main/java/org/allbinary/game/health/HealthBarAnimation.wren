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
// package org.allbinary.game.health

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/Animation" for Animation

class HealthBarAnimation is Animation {
  basicColorFactory { _basicColorFactory }
  basicColorFactory=(value) { _basicColorFactory = value }
  x2 { _x2 }
  x2=(value) { _x2 = value }
  thickness { _thickness }
  thickness=(value) { _thickness = value }
  location { _location }
  location=(value) { _location = value }
  allbinaryLayer { _allbinaryLayer }
  allbinaryLayer=(value) { _allbinaryLayer = value }

  initFields_HealthBarAnimation() {
    _basicColorFactory = null
    _x2 = 0
    _thickness = 0
    _location = 0
    _allbinaryLayer = null
        _basicColorFactory = BasicColorFactory.getInstance()
        _x2 = 0
        _thickness = 0
        
        
  }
    

    construct new(layerInterface, location) {
    super()
    initFields_HealthBarAnimation()
        _allbinaryLayer = layerInterface
        _location = location
        var basicHudFactory = BasicHudFactory.getInstance()
        if (((_location != basicHudFactory.TOPLEFT) && (_location != basicHudFactory.BOTTOMLEFT))) {
            Fiber.abort(JR.exception("Exception", "Location Not Valid"))
        }
        if ((layerInterface.getWidth() > 40)) {
            _thickness = 3
        } else if ((layerInterface.getWidth() > 20)) {
            _thickness = 2
        } else {
            _thickness = 1
        }
    }
    

    onHealthChange(newX2) {
        _x2 = newX2
        var quarter = (JR.shr(_allbinaryLayer.getWidth(), 2))
        if ((_x2 > JR.i32(quarter * 3))) {
            this.basicColor = _basicColorFactory.GREEN
            this.colorP = this.basicColor.intValue()
        } else if ((_x2 > JR.i32(quarter * 2))) {
            this.basicColor = _basicColorFactory.YELLOW
            this.colorP = this.basicColor.intValue()
        } else if ((_x2 > quarter)) {
            this.basicColor = _basicColorFactory.ORANGE
            this.colorP = this.basicColor.intValue()
        } else {
            this.basicColor = _basicColorFactory.RED
            this.colorP = this.basicColor.intValue()
        }
    }
    

    getY() {
        var basicHudFactory = BasicHudFactory.getInstance()
        if ((_location == basicHudFactory.TOPLEFT)) {
            return (_allbinaryLayer.getViewPosition().getY() - 4)
        } else if ((_location == basicHudFactory.BOTTOMLEFT)) {
            return (_allbinaryLayer.getViewPosition().getY2() + 4)
        }
        return -1
    }
}

import "../../../../org/allbinary/game/graphics/hud/BasicHudFactory" for BasicHudFactory
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

