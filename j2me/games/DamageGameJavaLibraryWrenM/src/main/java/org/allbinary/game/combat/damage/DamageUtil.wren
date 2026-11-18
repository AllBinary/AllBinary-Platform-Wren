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

class DamageUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DamageUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  COLLIDE { _COLLIDE }
  COLLIDE=(value) { _COLLIDE = value }

  initFields_DamageUtil() {
    _logUtil = null
    _COLLIDE = null
        _logUtil = LogUtil.getInstance()
        _COLLIDE = "collide"
  }
    

    static getInstance() {
        return DamageUtil.instance
    }
    

    construct new() {
    super()
    initFields_DamageUtil()
    }
    

    process(damageableInterface, damageableInterface2) {
        damageableInterface.damage(damageableInterface2.getDamage(0), 0)
    }
    

    debugDamage(collidableInterfaceCompositeInterface1, collidableInterfaceCompositeInterface) {
        var collidableDestroyableDamageableLayer = collidableInterfaceCompositeInterface
        var damage = collidableDestroyableDamageableLayer.getDamage(0)
        if ((damage > 20000)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append("Collision ")
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString())
            stringBuffer.append(" with: ")
            stringBuffer.append(collidableInterfaceCompositeInterface.toString())
            stringBuffer.append(" damage: ")
            stringBuffer.appendint(damage)
            _logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, _COLLIDE)
        }
    }
}

import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./DamageableInterface" for DamageableInterface

