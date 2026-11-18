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
// package org.allbinary.game.combat.weapon

import "../../../../../allbinary_java" for JObject, JException, JR
import "./SimpleWeaponProperties" for SimpleWeaponProperties

class WeaponProperties is SimpleWeaponProperties {
    static NULL_WEAPON_PROPERTIES {
    if (__NULL_WEAPON_PROPERTIES_set == null) {
      __NULL_WEAPON_PROPERTIES_set = true
      __NULL_WEAPON_PROPERTIES = WeaponProperties.new(0, 0, 0, 0, JR.i16(0))
    }
    return __NULL_WEAPON_PROPERTIES
  }
  static NULL_WEAPON_PROPERTIES=(value) {
    __NULL_WEAPON_PROPERTIES_set = true
    __NULL_WEAPON_PROPERTIES = value
  }
    static messageSent {
    if (__messageSent_set == null) {
      __messageSent_set = true
      __messageSent = false
    }
    return __messageSent
  }
  static messageSent=(value) {
    __messageSent_set = true
    __messageSent = value
  }
    static DAMAGE { "Damage: " }
    static RANGE { "Range: " }
    static RELOAD { "Reload: " }
  reloadTime { _reloadTime }
  reloadTime=(value) { _reloadTime = value }
  targetingTime { _targetingTime }
  targetingTime=(value) { _targetingTime = value }
  speed { _speed }
  speed=(value) { _speed = value }
  MAX { _MAX }
  MAX=(value) { _MAX = value }
  ZERO { _ZERO }
  ZERO=(value) { _ZERO = value }

  initFields_WeaponProperties() {
    _reloadTime = 0
    _targetingTime = 0
    _speed = null
    _MAX = 0
    _ZERO = 0
        _reloadTime = 0
        _targetingTime = 0
        _speed = BasicDecimal.ZERO_BIGDECIMAL
        _MAX = 10240
        _ZERO = 0
  }
    

    construct new(reloadTime, targetingTime, speed, damage, dissipation) {
    super()
    initFields_WeaponProperties()
        if ((((speed < _MAX) && (speed != 0)) && !WeaponProperties.messageSent)) {
            var MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker.new().append(MESSAGE).appendlong(speed).toString(), this, commonStrings.CONSTRUCTOR)
            WeaponProperties.messageSent = true
        }
        this.setReloadTime(reloadTime)
        this.setTargetingTime(targetingTime)
        this.setDamage(damage)
        this.setDissipation(dissipation)
        this.setSpeed(BasicDecimal.new(speed))
        if ((dissipation != _ZERO)) {
            var unscaledDamage = (_speed.getUnscaled() * damage)
            var scaledDissipation = (dissipation * _speed.getScaledFactorValue())
            var value = (JR.idiv(unscaledDamage, scaledDissipation))
            this.setRange(JR.idiv(JR.i32((JR.i32(value * 9))), 10))
        }
    }
    

    setReloadTime(reloadTime) {
        _reloadTime = reloadTime
    }
    

    getReloadTime() {
        return _reloadTime
    }
    

    setTargetingTime(targetingTime) {
        _targetingTime = targetingTime
    }
    

    getTargetingTime() {
        return _targetingTime
    }
    

    getSpeed() {
        return _speed
    }
    

    setSpeed(speed) {
        _speed = speed
    }
    

    getDamageI(range) {
        return (this.getDamage() - ((((this.getDissipation() * range)) / _speed.getScaled())))
    }
    

    toStringArray() {
        var index = 0
        var stringArray = List.filled(3, null)
        var stringBuffer = StringMaker.new()
        stringArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = stringBuffer.append(WeaponProperties.DAMAGE).appendint(JR.i32(this.getDamage())).toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = stringBuffer.append(WeaponProperties.RANGE).appendint(JR.i32(this.getRange())).toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call()] = stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime()).toString()
        return stringArray
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(WeaponProperties.DAMAGE).appendint(JR.i32(this.getDamage()))
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties.RANGE).appendint(JR.i32(this.getRange()))
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime())
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

