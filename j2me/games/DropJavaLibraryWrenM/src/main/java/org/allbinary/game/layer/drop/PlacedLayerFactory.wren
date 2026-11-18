// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop

import "../../../../../allbinary_java" for JObject, JException, JR

class PlacedLayerFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PlacedLayerFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }
  basicArrayListUtil { _basicArrayListUtil }
  basicArrayListUtil=(value) { _basicArrayListUtil = value }

  initFields_PlacedLayerFactory() {
    _list = null
    _basicArrayListUtil = null
        _list = BasicArrayListD.new()
        _basicArrayListUtil = BasicArrayListUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_PlacedLayerFactory()
    }
    

    clear() {
        _list.clear()
    }
    

    static getInstance() {
        return PlacedLayerFactory.instance
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
}

import "../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

