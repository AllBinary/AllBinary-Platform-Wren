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
import "./AbstractArrayListPool" for AbstractArrayListPool

class BasicArrayListPool is AbstractArrayListPool {

  initFields_BasicArrayListPool() {
  }
    

    construct new(cacheableInterfaceFactoryInterface) {
        super(cacheableInterfaceFactoryInterface)
    }
    

    clear() {
        this.buffers.clear()
    }
    

    remove(key) {
        var size = this.buffers.size()
        if ((size > 0)) {
            return this.buffers.removeAt(JR.i32(size - 1))
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance(key)
        }
    }
    

    addAll(usedList) {
        if (true) {
            var index = usedList.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var anyType = usedList.objectArray[index]
            this.add(anyType)
            }
        }
        usedList.clear()
    }
    

    releaseUsedBackToPool(usedList) {
        if (true) {
            var index = usedList.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var list = usedList.objectArray[index]
            if ((list.size() == 0)) {
                usedList.removeAt(index)
                this.add(list)
            }
            }
        }
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./CacheableInterfaceFactoryInterface" for CacheableInterfaceFactoryInterface
import "./CacheableInterface" for CacheableInterface
import "./BasicArrayListCacheable" for BasicArrayListCacheable

