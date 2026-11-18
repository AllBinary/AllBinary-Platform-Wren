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
// package org.allbinary.game.ag.layer.hud.basic.health

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud" for BasicHud

class HealthHudWidget is BasicHud {
  healthScale { _healthScale }
  healthScale=(value) { _healthScale = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  healthInterface { _healthInterface }
  healthInterface=(value) { _healthInterface = value }
  max { _max }
  max=(value) { _max = value }
  xArray { _xArray }
  xArray=(value) { _xArray = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  slowBeatTimeDelayHelper { _slowBeatTimeDelayHelper }
  slowBeatTimeDelayHelper=(value) { _slowBeatTimeDelayHelper = value }
  mediumBeatTimeDelayHelper { _mediumBeatTimeDelayHelper }
  mediumBeatTimeDelayHelper=(value) { _mediumBeatTimeDelayHelper = value }
  fastBeatTimeDelayHelper { _fastBeatTimeDelayHelper }
  fastBeatTimeDelayHelper=(value) { _fastBeatTimeDelayHelper = value }

  initFields_HealthHudWidget() {
    _healthScale = 0
    _animationInterface = null
    _healthInterface = null
    _max = 0
    _xArray = null
    _gameTickTimeDelayHelper = null
    _timeDelayHelper = null
    _slowBeatTimeDelayHelper = null
    _mediumBeatTimeDelayHelper = null
    _fastBeatTimeDelayHelper = null
        
        
        
        _max = 0
        
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        _timeDelayHelper = NoTimeDelayHelper.SINGLETON
        _slowBeatTimeDelayHelper = TimeDelayHelper.new(1280)
        _mediumBeatTimeDelayHelper = TimeDelayHelper.new(640)
        _fastBeatTimeDelayHelper = TimeDelayHelper.new(320)
  }
    

    construct new(animationInterface, healthInterface, location, direction) {
        super(location, direction, 2, BasicColorFactory.getInstance().WHITE)
        initFields_HealthHudWidget()
        _animationInterface = animationInterface
        _healthInterface = healthInterface
        _healthInterface.addListener(this)
        _healthScale = (((_healthInterface.getMaxHealth() / 6)) + 1)
        this.onHealthChange()
        this.updateMaxWidth = (healthInterface.getMaxHealth() * 16)
        this.updateMaxHeight = 16
        _xArray = List.filled(30, 0)
        this.update()
    }
    

    update() {
        if ((_xArray != null)) {
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < _xArray.count))) break
                _xArray[index] = (this.getX() + (JR.i32(index * 16)))
                }
            }
        }
    }
    

    setX(x) {
        super.setX(x)
        this.update()
    }
    

    onHealthChange() {
        _max = ((_healthInterface.getHealth() / _healthScale))
        _timeDelayHelper = NoTimeDelayHelper.SINGLETON
        if (((_max <= 1) && _healthInterface.isAlive())) {
            _max = 1
            if (((_healthScale - _healthInterface.getHealth()) > JR.idiv((JR.i32(_healthScale * 2)), 3))) {
                _timeDelayHelper = _slowBeatTimeDelayHelper
            } else if (((_healthScale - _healthInterface.getHealth()) > JR.idiv(_healthScale, 3))) {
                _timeDelayHelper = _mediumBeatTimeDelayHelper
            } else {
                _timeDelayHelper = _fastBeatTimeDelayHelper
            }
        }
    }
    

    paint(graphics) {
        this.myFontProcessor.process(graphics)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _max))) break
            if (_timeDelayHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
                _animationInterface.paintXY(graphics, _xArray[index], this.getY())
            }
            }
        }
    }
    

    paintThreed(graphics) {
    }
}

import "../../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../../../../org/allbinary/game/health/Health" for Health
import "../../../../../../../../org/allbinary/game/health/HealthListenerInterface" for HealthListenerInterface
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../../../../org/allbinary/time/NoTimeDelayHelper" for NoTimeDelayHelper
import "../../../../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper

