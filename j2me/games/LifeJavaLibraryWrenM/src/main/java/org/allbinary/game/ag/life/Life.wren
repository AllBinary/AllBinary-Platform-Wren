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

class Life is JObject {
    static NO_LIFE {
    if (__NO_LIFE_set == null) {
      __NO_LIFE_set = true
      __NO_LIFE = Life.createLife()
    }
    return __NO_LIFE
  }
  static NO_LIFE=(value) {
    __NO_LIFE_set = true
    __NO_LIFE = value
  }
  lives { _lives }
  lives=(value) { _lives = value }
  startLives { _startLives }
  startLives=(value) { _startLives = value }
  maxlives { _maxlives }
  maxlives=(value) { _maxlives = value }

  initFields_Life() {
    _lives = 0
    _startLives = 0
    _maxlives = 0
        
        
        
  }
    

    static createLife() {
        var jerror0 = Fiber.new {
            return Life.new(JR.i16(0), JR.i16(0))
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
    }
    

    construct new(lives, maxlives) {
    super()
    initFields_Life()
        _maxlives = maxlives
        if ((lives > _maxlives)) {
            Fiber.abort(JR.exception("Exception", "To Many Lives"))
        }
        _lives = lives
        _startLives = lives
    }
    

    get() {
        return _lives
    }
    

    set(lives) {
        _lives = lives
    }
    

    reset() {
        _lives = _startLives
    }
    

    add(lives) {
        if (!this.reachedLimit()) {
            if ((JR.i32(_lives + lives) <= JR.i32(this.getMaxlives()))) {
                _lives = JR.i16((JR.i32(_lives + lives)))
            } else {
                _lives = this.getMaxlives()
            }
        }
    }
    

    isAlive() {
        if ((JR.i32(_lives) <= 0)) {
            return false
        } else {
            return true
        }
    }
    

    getMaxlives() {
        return _maxlives
    }
    

    reachedLimit() {
        if (((_lives > _maxlives) || (JR.i32(_lives) < 0))) {
            return true
        } else {
            return false
        }
    }
    

    deaths(lives) {
        if (!this.reachedLimit()) {
            if ((JR.i32(_lives - lives) >= 0)) {
                _lives = JR.i16((JR.i32(_lives - lives)))
            } else {
                _lives = 0
            }
        }
    }
    

    getStartLives() {
        return _startLives
    }
    

    setStartLives(startLives) {
        _startLives = startLives
    }
}

import "./LifeInterface" for LifeInterface

