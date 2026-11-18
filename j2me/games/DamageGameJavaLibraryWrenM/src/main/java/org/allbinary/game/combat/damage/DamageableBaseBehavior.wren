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
// package org.allbinary.game.combat.damage

import "../../../../../allbinary_java" for JObject, JException, JR

class DamageableBaseBehavior is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DamageableBaseBehavior.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_DamageableBaseBehavior() {
  }

  construct new() {
    super()
    initFields_DamageableBaseBehavior()
  }
    

    static getInstance() {
        return DamageableBaseBehavior.instance
    }
    

    getName() {
        return JR.className(this)
    }
    

    damage(damage, damageType) {
    }
    

    getDamage(damageType) {
        return 6000
    }
}

import "./DamageableInterface" for DamageableInterface

