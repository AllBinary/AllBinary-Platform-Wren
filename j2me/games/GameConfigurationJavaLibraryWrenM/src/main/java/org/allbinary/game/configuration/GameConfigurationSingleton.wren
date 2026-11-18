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
// package org.allbinary.game.configuration

import "../../../../allbinary_java" for JObject, JException, JR

class GameConfigurationSingleton is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = GameConfigurationSingleton.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  list { _list }
  list=(value) { _list = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }

  initFields_GameConfigurationSingleton() {
    _list = null
    _hashtable = null
        
        
  }
    

    static getInstance() {
        return GameConfigurationSingleton.SINGLETON
    }
    

    construct new() {
    super()
    initFields_GameConfigurationSingleton()
        _list = BasicArrayListD.new()
        _hashtable = StdUtil.getInstance().createHashtable()
    }
    

    getInstanceByName(name) {
        return _hashtable.get(name)
    }
    

    getOptionsBasicArrayList() {
        return _list
    }
    

    add(gameConfiguration) {
        _list.add(gameConfiguration)
    }
    

    getHashtable() {
        return _hashtable
    }
}

import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameConfiguration" for GameConfiguration

