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
// package org.allbinary.game.layer.drop

import "../../../../../allbinary_java" for JObject, JException, JR

class DropLayerFactory is JObject {
    static DROP_LAYER_FACTORY {
    if (__DROP_LAYER_FACTORY_set == null) {
      __DROP_LAYER_FACTORY_set = true
      __DROP_LAYER_FACTORY = DropLayerFactory.new()
    }
    return __DROP_LAYER_FACTORY
  }
  static DROP_LAYER_FACTORY=(value) {
    __DROP_LAYER_FACTORY_set = true
    __DROP_LAYER_FACTORY = value
  }
  list { _list }
  list=(value) { _list = value }
  basicArrayListUtil { _basicArrayListUtil }
  basicArrayListUtil=(value) { _basicArrayListUtil = value }

  initFields_DropLayerFactory() {
    _list = null
    _basicArrayListUtil = null
        _list = BasicArrayListD.new()
        _basicArrayListUtil = BasicArrayListUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_DropLayerFactory()
    }
    

    clear() {
        _list.clear()
    }
    

    static getInstance() {
        return DropLayerFactory.DROP_LAYER_FACTORY
    }
    

    getSize() {
        return _list.size()
    }
    

    getRandomInstance() {
        return _basicArrayListUtil.getRandom(_list)
    }
    

    add(layerInterfaceFactoryInterface) {
        _list.add(layerInterfaceFactoryInterface)
    }
    

    getList() {
        return _list
    }
}

import "../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

