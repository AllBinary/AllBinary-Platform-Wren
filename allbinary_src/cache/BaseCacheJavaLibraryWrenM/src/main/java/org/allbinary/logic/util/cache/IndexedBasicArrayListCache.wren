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
import "./BaseBasicArrayListCache" for BaseBasicArrayListCache

class IndexedBasicArrayListCache is BaseBasicArrayListCache {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  size { _size }
  size=(value) { _size = value }
  index { _index }
  index=(value) { _index = value }

  initFields_IndexedBasicArrayListCache() {
    _commonStrings = null
    _size = 0
    _index = 0
        _commonStrings = CommonStrings.getInstance()
        _size = 0
        _index = 0
  }
    

    static createCache(size) {
        var indexedBasicArrayListCache = IndexedBasicArrayListCache.new()
        indexedBasicArrayListCache.init(size)
        return indexedBasicArrayListCache
    }
    

    construct new() {
    super()
    initFields_IndexedBasicArrayListCache()
    }
    

    init(size) {
        if ((_size < size)) {
            this.list.ensureCapacity(size)
            if (true) {
                var index = JR.i32(size - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index >= _size))) break
                this.addDefault()
                }
            }
            _size = size
        }
    }
    

    getAt(index) {
        return this.list.objectArray[index]
    }
    

    addDefault() {
    }
    

    addObject(anyType) {
        this.list.add(anyType)
    }
    

    add(cacheableInterface) {
        this.list.add(cacheableInterface)
    }
    

    addArray(cacheableInterfaces) {
        Fiber.abort(JR.exception("Exception", "No Imple"))
    }
    

    clear() {
        _index = 0
    }
}

import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./CacheInterface" for CacheInterface
import "./CacheableInterface" for CacheableInterface

