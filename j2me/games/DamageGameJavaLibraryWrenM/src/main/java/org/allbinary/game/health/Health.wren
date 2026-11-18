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

class Health is JObject {
    static NULL_HEALTH {
    if (__NULL_HEALTH_set == null) {
      __NULL_HEALTH_set = true
      __NULL_HEALTH = Health.new(0)
    }
    return __NULL_HEALTH
  }
  static NULL_HEALTH=(value) {
    __NULL_HEALTH_set = true
    __NULL_HEALTH = value
  }
    static NAME { "Health Resource" }
    static HEALTH_LABEL { "Health: " }
    static MAX_HEALTH_LABEL { " Max: " }
  health { _health }
  health=(value) { _health = value }
  maxHealth { _maxHealth }
  maxHealth=(value) { _maxHealth = value }
  healthListenerInterface { _healthListenerInterface }
  healthListenerInterface=(value) { _healthListenerInterface = value }

  initFields_Health() {
    _health = 0
    _maxHealth = 0
    _healthListenerInterface = null
        _health = 0
        _maxHealth = 0
        _healthListenerInterface = NullHealthListener.NULL_HEALTH_LISTENER
  }
    

    construct new(maxHealth) {
    super()
    initFields_Health()
        this.setMaxHealth(maxHealth)
        this.setHealth(maxHealth)
    }
    

    heal(ahealth) {
        var newHealth = JR.i32(this.getHealth() + ahealth)
        if ((newHealth > this.getMaxHealth())) {
            this.setHealth(this.getMaxHealth())
        } else {
            this.setHealth(newHealth)
        }
    }
    

    healMax() {
        this.setHealth(this.getMaxHealth())
    }
    

    isDamaged() {
        if ((this.getHealth() != this.getMaxHealth())) {
            return true
        } else {
            return false
        }
    }
    

    damage(ahealth) {
        if ((ahealth < 0)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append("******* Trying to heal when damaging. Damage: ")
            stringBuffer.appendint(ahealth)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(this.toString())
            ForcedLogUtil.log(stringBuffer.toString(), this)
            return
        }
        var health = JR.i32(this.getHealth() - ahealth)
        this.setHealth(health)
    }
    

    isAlive() {
        if ((this.getHealth() <= 0)) {
            return false
        } else {
            return true
        }
    }
    

    getMaxHealth() {
        return _maxHealth
    }
    

    setMaxHealth(maxHealth) {
        _maxHealth = maxHealth
    }
    

    setHealth(health) {
        if ((health > this.getMaxHealth())) {
            _health = this.getMaxHealth()
        } else if ((health < 0)) {
            _health = 0
        } else {
            _health = health
        }
        if ((_healthListenerInterface != null)) {
            _healthListenerInterface.onHealthChange()
        }
    }
    

    getHealth() {
        return _health
    }
    

    addListener(healthGraphic) {
        _healthListenerInterface = healthGraphic
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(Health.HEALTH_LABEL)
        stringBuffer.appendint(_health)
        stringBuffer.append(Health.MAX_HEALTH_LABEL)
        stringBuffer.appendint(_maxHealth)
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./HealthInterface" for HealthInterface
import "./NullHealthListener" for NullHealthListener
import "./HealthListenerInterface" for HealthListenerInterface

