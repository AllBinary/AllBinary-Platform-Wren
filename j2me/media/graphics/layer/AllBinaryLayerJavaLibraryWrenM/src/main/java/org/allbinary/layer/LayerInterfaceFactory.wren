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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR

class LayerInterfaceFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = LayerInterfaceFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  list { _list }
  list=(value) { _list = value }
  HASHTABLE_LABEL { _HASHTABLE_LABEL }
  HASHTABLE_LABEL=(value) { _HASHTABLE_LABEL = value }

  initFields_LayerInterfaceFactory() {
    _logUtil = null
    _list = null
    _HASHTABLE_LABEL = null
        _logUtil = LogUtil.getInstance()
        _list = BasicArrayListUtil.getInstance().getImmutableInstance()
        _HASHTABLE_LABEL = "Hashtable: "
  }

  construct new() {
    super()
    initFields_LayerInterfaceFactory()
  }
    

    static getInstance() {
        return LayerInterfaceFactory.SINGLETON
    }
    

    init() {
        _list = BasicArrayListD.new()
    }
    

    getNexInstance(hashtable, x, y, z) {
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF(StringMaker.new().append(_HASHTABLE_LABEL).append(StringUtil.getInstance().toString(hashtable)).toString(), this, commonStrings.GET_INSTANCE)
        var typeInteger = hashtable.get(Layer.ID)
        var layerInterfaceFactoryInterface = _list.objectArray[(typeInteger.intValue() - 1)]
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z)
    }
    

    add(layerInterfaceFactoryInterface) {
        _list.add(layerInterfaceFactoryInterface)
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "../../../java/lang/Integer" for Integer
import "./Layer" for Layer
import "./LayerInterfaceFactoryInterface" for LayerInterfaceFactoryInterface
import "./AllBinaryLayer" for AllBinaryLayer

