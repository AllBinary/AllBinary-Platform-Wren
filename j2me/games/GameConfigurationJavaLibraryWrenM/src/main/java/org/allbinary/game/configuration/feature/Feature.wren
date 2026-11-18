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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class Feature is JObject {
    static hashtable {
    if (__hashtable_set == null) {
      __hashtable_set = true
      __hashtable = StdUtil.getInstance().createHashtable()
    }
    return __hashtable
  }
  static hashtable=(value) {
    __hashtable_set = true
    __hashtable = value
  }
  name { _name }
  name=(value) { _name = value }

  initFields_Feature() {
    _name = null
        
  }
    

    construct new(name) {
    super()
    initFields_Feature()
        _name = name
        Feature.add(name, this)
        ChangedGameFeatureListener.getInstance().add(this)
    }
    

    static getInstance(name) {
        return Feature.hashtable.get(name)
    }
    

    static add(name, gameFeature) {
        Feature.hashtable.put(name, gameFeature)
    }
    

    toString() {
        return this.getName()
    }
    

    getName() {
        return _name
    }
}

import "../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" for ChangedGameFeatureListener
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable

