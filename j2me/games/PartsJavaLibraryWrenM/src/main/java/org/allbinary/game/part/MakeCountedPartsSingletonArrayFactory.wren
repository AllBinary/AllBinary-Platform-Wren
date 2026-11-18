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
// package org.allbinary.game.part

import "../../../../allbinary_java" for JObject, JException, JR

class MakeCountedPartsSingletonArrayFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MakeCountedPartsSingletonArrayFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  list { _list }
  list=(value) { _list = value }

  initFields_MakeCountedPartsSingletonArrayFactory() {
    _logUtil = null
    _list = null
        _logUtil = LogUtil.getInstance()
        _list = BasicArrayListUtil.getInstance().getImmutableInstance()
  }

  construct new() {
    super()
    initFields_MakeCountedPartsSingletonArrayFactory()
  }
    

    static getInstance() {
        return MakeCountedPartsSingletonArrayFactory.instance
    }
    

    getUpdated(partInterfaceArray) {
        _list = BasicArrayListD.new()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < partInterfaceArray.count))) break
            _list.add(partInterfaceArray[index])
            }
        }
        var countedBasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        var layerInterfaceFactoryInterface = null
        var size = countedBasicArrayList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            layerInterfaceFactoryInterface = countedBasicArrayList.objectArray[index]
            _list.add(CountedLayerInterfaceFactoryPart.new(0, layerInterfaceFactoryInterface))
            }
        }
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Total Parts: ")
        stringBuffer.appendint(_list.size())
        stringBuffer.append(" Counted: ")
        stringBuffer.appendint(countedBasicArrayList.size())
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE)
        var newPartInterfaceArray = List.filled(_list.size(), null)
        var newSize = newPartInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < newSize))) break
            newPartInterfaceArray[index] = _list.get(index)
            }
        }
        return newPartInterfaceArray
    }
}

import "../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory
import "../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool" for CountedPickedUpLayerInterfaceFactoryPool
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "./CountedLayerInterfaceFactoryPart" for CountedLayerInterfaceFactoryPart
import "./PartInterface" for PartInterface

