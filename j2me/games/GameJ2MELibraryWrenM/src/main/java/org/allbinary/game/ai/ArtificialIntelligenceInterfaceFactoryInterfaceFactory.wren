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
// package org.allbinary.game.ai

import "../../../../allbinary_java" for JObject, JException, JR

class ArtificialIntelligenceInterfaceFactoryInterfaceFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = ArtificialIntelligenceInterfaceFactoryInterfaceFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_ArtificialIntelligenceInterfaceFactoryIn54aceFactory() {
    _list = null
        _list = BasicArrayListUtil.getInstance().getImmutableInstance()
  }

  construct new() {
    super()
    initFields_ArtificialIntelligenceInterfaceFactoryIn54aceFactory()
  }
    

    clear() {
        _list = BasicArrayListD.new()
    }
    

    static getInstance() {
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON
    }
    

    getInstanceFromCollection(hashtable) {
        var typeInteger = hashtable.get(BasicAI.ID)
        var type = typeInteger.intValue()
        var artificialIntelligenceInterfaceFactoryInterface = _list.objectArray[JR.i32(type - 1)]
        return artificialIntelligenceInterfaceFactoryInterface
    }
    

    add(artificialIntelligenceInterfaceFactoryInterface) {
        _list.add(artificialIntelligenceInterfaceFactoryInterface)
    }
}

import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "../../../../java/lang/Integer" for Integer
import "./BasicAI" for BasicAI
import "./ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface

