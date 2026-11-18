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
// package org.allbinary.game.ag.life

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class HealthIncludingLifeBar is Paintable {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  life { _life }
  life=(value) { _life = value }
  healthInterface { _healthInterface }
  healthInterface=(value) { _healthInterface = value }
  allbinaryLayer { _allbinaryLayer }
  allbinaryLayer=(value) { _allbinaryLayer = value }

  initFields_HealthIncludingLifeBar() {
    _animationInterface = null
    _life = null
    _healthInterface = null
    _allbinaryLayer = null
        
        
        
        
  }
    

    static createHealthIncludingLifeBar(layerInterface, life, healthInterface, location, direction) {
        return HealthIncludingLifeBar.new(layerInterface, life, healthInterface, HealthBarTwodAnimation.new(layerInterface, location), direction)
    }
    

    construct new(layerInterface, life, healthInterface, animationInterface, direction) {
    super()
    initFields_HealthIncludingLifeBar()
        _allbinaryLayer = layerInterface
        _animationInterface = animationInterface
        _life = life
        _healthInterface = healthInterface
        _healthInterface.addListener(this)
        this.onHealthChange()
    }
    

    onHealthChange() {
        _animationInterface.onHealthChange((((((_healthInterface.getHealth() + ((_healthInterface.getMaxHealth() * _life.get())))) * _allbinaryLayer.getWidth())) / ((_healthInterface.getMaxHealth() + ((_healthInterface.getMaxHealth() * _life.getStartLives()))))))
    }
    

    paint(graphics) {
        _animationInterface.paintXY(graphics, 0, 0)
    }
    

    paintThreed(graphics) {
        _animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/health/Health" for Health
import "../../../../../org/allbinary/game/health/HealthBarAnimation" for HealthBarAnimation
import "../../../../../org/allbinary/game/health/HealthBarTwodAnimation" for HealthBarTwodAnimation
import "../../../../../org/allbinary/game/health/HealthInterface" for HealthInterface
import "../../../../../org/allbinary/game/health/HealthListenerInterface" for HealthListenerInterface
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./Life" for Life

