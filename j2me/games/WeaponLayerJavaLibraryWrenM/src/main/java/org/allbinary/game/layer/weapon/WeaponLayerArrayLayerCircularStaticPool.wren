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
// package org.allbinary.game.layer.weapon

import "../../../../../allbinary_java" for JObject, JException, JR

class WeaponLayerArrayLayerCircularStaticPool is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = WeaponLayerArrayLayerCircularStaticPool.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  MAX { _MAX }
  MAX=(value) { _MAX = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  WEAPONLAYER_ARRAY { _WEAPONLAYER_ARRAY }
  WEAPONLAYER_ARRAY=(value) { _WEAPONLAYER_ARRAY = value }
  TWO_WEAPONLAYER_ARRAY { _TWO_WEAPONLAYER_ARRAY }
  TWO_WEAPONLAYER_ARRAY=(value) { _TWO_WEAPONLAYER_ARRAY = value }
  THREE_WEAPONLAYER_ARRAY { _THREE_WEAPONLAYER_ARRAY }
  THREE_WEAPONLAYER_ARRAY=(value) { _THREE_WEAPONLAYER_ARRAY = value }

  initFields_WeaponLayerArrayLayerCircularStaticPool() {
    _MAX = 0
    _circularIndexUtil = null
    _WEAPONLAYER_ARRAY = null
    _TWO_WEAPONLAYER_ARRAY = null
    _THREE_WEAPONLAYER_ARRAY = null
        _MAX = 5
        _circularIndexUtil = CircularIndexUtil.createInstance(_MAX)
        _WEAPONLAYER_ARRAY = null
        _TWO_WEAPONLAYER_ARRAY = null
        _THREE_WEAPONLAYER_ARRAY = null
  }

  construct new() {
    super()
    initFields_WeaponLayerArrayLayerCircularStaticPool()
  }
    

    static getInstance() {
        return WeaponLayerArrayLayerCircularStaticPool.instance
    }
    

    init() {
        var WEAPONLAYER_ARRAY = List.filled(JR.i32(_MAX * 2), null)
        var TWO_WEAPONLAYER_ARRAY = List.filled(_MAX, null)
        var THREE_WEAPONLAYER_ARRAY = List.filled(_MAX, null)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _MAX))) break
            WEAPONLAYER_ARRAY[index] = List.filled(1, null)
            TWO_WEAPONLAYER_ARRAY[index] = List.filled(2, null)
            THREE_WEAPONLAYER_ARRAY[index] = List.filled(3, null)
            }
        }
        _WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY
        _TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY
        _THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY
    }
    

    getWeaponLayerArrays(size) {
        if ((size == 1)) {
            return _WEAPONLAYER_ARRAY
        } else if ((size == 2)) {
            return _TWO_WEAPONLAYER_ARRAY
        } else if ((size == 3)) {
            return _THREE_WEAPONLAYER_ARRAY
        }
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getInstanceArray(size) {
        var weaponLayerArray = this.getWeaponLayerArrays(size)[_circularIndexUtil.getIndex()]
        _circularIndexUtil.next()
        return weaponLayerArray
    }
}

import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./WeaponLayer" for WeaponLayer

