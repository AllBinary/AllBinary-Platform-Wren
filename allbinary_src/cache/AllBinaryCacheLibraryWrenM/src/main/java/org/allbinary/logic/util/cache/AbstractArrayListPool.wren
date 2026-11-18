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
// package org.allbinary.logic.util.cache

import "../../../../../allbinary_java" for JObject, JException, JR

class AbstractArrayListPool is JObject {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  buffers { _buffers }
  buffers=(value) { _buffers = value }
  cacheableInterfaceFactoryInterface { _cacheableInterfaceFactoryInterface }
  cacheableInterfaceFactoryInterface=(value) { _cacheableInterfaceFactoryInterface = value }

  initFields_AbstractArrayListPool() {
    _commonStrings = null
    _buffers = null
    _cacheableInterfaceFactoryInterface = null
        _commonStrings = CommonStrings.getInstance()
        _buffers = BasicArrayListD.new()
        
  }
    

    construct new(cacheableInterfaceFactoryInterface) {
    super()
    initFields_AbstractArrayListPool()
        _cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
    }
    

    clear() {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    remove(key) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    add(cacheableInterface) {
        _buffers.add(cacheableInterface)
    }
    

    addArray(cacheableInterfaces) {
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < cacheableInterfaces.count))) break
            _buffers.add(cacheableInterfaces[index])
            }
        }
    }
}

import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./PoolInterface" for PoolInterface
import "./CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./CacheableInterface" for CacheableInterface

