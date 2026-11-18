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

class CachePolicy is JObject {
  name { _name }
  name=(value) { _name = value }
  maxTime { _maxTime }
  maxTime=(value) { _maxTime = value }
  maxSize { _maxSize }
  maxSize=(value) { _maxSize = value }

  initFields_CachePolicy() {
    _name = null
    _maxTime = 0
    _maxSize = 0
        
        _maxTime = 0
        _maxSize = 0
  }
    

    construct new(name, maxTime, maxSize) {
    super()
    initFields_CachePolicy()
        _name = name
        this.setMaxTime(maxTime)
        this.setMaxSize(maxSize)
    }
    

    getMaxTime() {
        return _maxTime
    }
    

    setMaxTime(maxTime) {
        _maxTime = maxTime
    }
    

    getMaxSize() {
        return _maxSize
    }
    

    setMaxSize(maxSize) {
        _maxSize = maxSize
    }
    

    getName() {
        return _name
    }
}


