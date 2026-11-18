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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class LevelLayersFinder is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LevelLayersFinder.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  enumerationUtil { _enumerationUtil }
  enumerationUtil=(value) { _enumerationUtil = value }

  initFields_LevelLayersFinder() {
    _enumerationUtil = null
        _enumerationUtil = EnumerationUtil.getInstance()
  }

  construct new() {
    super()
    initFields_LevelLayersFinder()
  }
    

    static getInstance() {
        return LevelLayersFinder.instance
    }
    

    get(hashtable) {
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var list = BasicArrayListD.new()
        var enumeration = hashtable.keys()
        var layerHashtableCanBeNull = null
        var integerCanBeNull = null
        var cachedIntegerCanBeNull = null
        while (_enumerationUtil.hasMoreElements(enumeration)) {
            layerHashtableCanBeNull = hashtable.get(_enumerationUtil.nextElement(enumeration))
            integerCanBeNull = layerHashtableCanBeNull.get(Layer.ID)
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(integerCanBeNull.intValue())
            if (!list.contains(cachedIntegerCanBeNull)) {
                list.add(cachedIntegerCanBeNull)
            }
        }
        return list
    }
}

import "../../../../java/util/Enumeration" for Enumeration
import "../../../../org/allbinary/layer/Layer" for Layer
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/util/EnumerationUtil" for EnumerationUtil
import "../../../../java/lang/Integer" for Integer

