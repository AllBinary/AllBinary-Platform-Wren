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

class SimpleWeaponProperties is JObject {
  damage { _damage }
  damage=(value) { _damage = value }
  dissipation { _dissipation }
  dissipation=(value) { _dissipation = value }
  range { _range }
  range=(value) { _range = value }

  initFields_SimpleWeaponProperties() {
    _damage = 0
    _dissipation = 0
    _range = 0
        _damage = 0
        _dissipation = 0
        _range = 0
  }

  construct new() {
    super()
    initFields_SimpleWeaponProperties()
  }
    

    set(simpleWeaponProperties) {
        this.setDamage(simpleWeaponProperties.getDamage())
        this.setDissipation(simpleWeaponProperties.getDissipation())
        this.setRange(simpleWeaponProperties.getRange())
    }
    

    setDamage(damage) {
        _damage = damage
    }
    

    getDamage() {
        return _damage
    }
    

    setDissipation(dissipation) {
        _dissipation = dissipation
    }
    

    getDissipation() {
        return _dissipation
    }
    

    getRange() {
        return _range
    }
    

    setRange(range) {
        _range = range
    }
}


