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
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class HealthBar is Paintable {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  healthInterface { _healthInterface }
  healthInterface=(value) { _healthInterface = value }
  allbinaryLayer { _allbinaryLayer }
  allbinaryLayer=(value) { _allbinaryLayer = value }

  initFields_HealthBar() {
    _animationInterface = null
    _healthInterface = null
    _allbinaryLayer = null
        
        
        
  }
    

    construct new(layerInterface, healthInterface, animationInterface, direction) {
    super()
    initFields_HealthBar()
        _allbinaryLayer = layerInterface
        _animationInterface = animationInterface
        _healthInterface = healthInterface
        _healthInterface.addListener(this)
        this.onHealthChange()
    }
    

    onHealthChange() {
        _animationInterface.onHealthChange(((_healthInterface.getHealth() * _allbinaryLayer.getWidth()) / _healthInterface.getMaxHealth()))
    }
    

    paint(graphics) {
        _animationInterface.paintXY(graphics, 0, 0)
    }
    

    paintThreed(graphics) {
        _animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./HealthListenerInterface" for HealthListenerInterface
import "./HealthBarAnimation" for HealthBarAnimation
import "./HealthInterface" for HealthInterface
import "./Health" for Health

