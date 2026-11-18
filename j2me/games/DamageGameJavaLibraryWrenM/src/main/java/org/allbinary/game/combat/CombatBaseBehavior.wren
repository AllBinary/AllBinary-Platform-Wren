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
// package org.allbinary.game.combat

import "../../../../allbinary_java" for JObject, JException, JR

class CombatBaseBehavior is JObject {
    static NULL_COMBAT_BEHAVIOR {
    if (__NULL_COMBAT_BEHAVIOR_set == null) {
      __NULL_COMBAT_BEHAVIOR_set = true
      __NULL_COMBAT_BEHAVIOR = CombatBaseBehavior.new(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance())
    }
    return __NULL_COMBAT_BEHAVIOR
  }
  static NULL_COMBAT_BEHAVIOR=(value) {
    __NULL_COMBAT_BEHAVIOR_set = true
    __NULL_COMBAT_BEHAVIOR = value
  }
  damageableBaseBehavior { _damageableBaseBehavior }
  damageableBaseBehavior=(value) { _damageableBaseBehavior = value }
  destroyableBaseBehavior { _destroyableBaseBehavior }
  destroyableBaseBehavior=(value) { _destroyableBaseBehavior = value }
  readyForExplosion { _readyForExplosion }
  readyForExplosion=(value) { _readyForExplosion = value }

  initFields_CombatBaseBehavior() {
    _damageableBaseBehavior = null
    _destroyableBaseBehavior = null
    _readyForExplosion = false
        
        
        _readyForExplosion = false
  }
    

    construct new(damageableBaseBehavior, destroyableBaseBehavior) {
    super()
    initFields_CombatBaseBehavior()
        _damageableBaseBehavior = damageableBaseBehavior
        _destroyableBaseBehavior = destroyableBaseBehavior
    }
    

    getDamageableBaseBehavior() {
        return _damageableBaseBehavior
    }
    

    getDestroyableBaseBehavior() {
        return _destroyableBaseBehavior
    }
    

    isReadyForExplosion() {
        return _readyForExplosion
    }
    

    setReadyForExplosion(readyForExplosion) {
        _readyForExplosion = readyForExplosion
    }
}

import "../../../../org/allbinary/game/combat/damage/DamageableBaseBehavior" for DamageableBaseBehavior
import "../../../../org/allbinary/game/combat/destroy/DestroyableBaseBehavior" for DestroyableBaseBehavior

