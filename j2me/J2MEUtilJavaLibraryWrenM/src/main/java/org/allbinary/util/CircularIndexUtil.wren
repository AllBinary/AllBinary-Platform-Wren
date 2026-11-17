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
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR

class CircularIndexUtil is JObject {
    static NULL_CIRCULAR_INDEX_UTIL {
    if (__NULL_CIRCULAR_INDEX_UTIL_set == null) {
      __NULL_CIRCULAR_INDEX_UTIL_set = true
      __NULL_CIRCULAR_INDEX_UTIL = CircularIndexUtil.new(0, 0)
    }
    return __NULL_CIRCULAR_INDEX_UTIL
  }
  static NULL_CIRCULAR_INDEX_UTIL=(value) {
    __NULL_CIRCULAR_INDEX_UTIL_set = true
    __NULL_CIRCULAR_INDEX_UTIL = value
  }
  index { _index }
  index=(value) { _index = value }
  lastIndex { _lastIndex }
  lastIndex=(value) { _lastIndex = value }
  size { _size }
  size=(value) { _size = value }

  initFields_CircularIndexUtil() {
    _index = 0
    _lastIndex = 0
    _size = 0
        _index = 0
        _lastIndex = 0
        _size = 0
  }
    

    construct new(index, size) {
    super()
    initFields_CircularIndexUtil()
        this.setSize(size)
        this.setIndex(index)
    }
    

    next() {
        if ((_index >= _lastIndex)) {
            _index = 0
        } else {
            _index = JR.i32(_index + 1)
        }
        return _index
    }
    

    previous() {
        if ((_index < 1)) {
            _index = _lastIndex
        } else {
            _index = JR.i32(_index - 1)
        }
        return _index
    }
    

    setIndex(index) {
        if ((index > _lastIndex)) {
            return
        }
        _index = index
    }
    

    getIndex() {
        return _index
    }
    

    static createInstance(max) {
        return CircularIndexUtil.new(0, max)
    }
    

    static createInstanceAt(index, max) {
        return CircularIndexUtil.new(index, max)
    }
    

    setSize(size) {
        _size = size
        _lastIndex = JR.i32(size - 1)
        _index = 0
    }
    

    getSize() {
        return _size
    }
    

    toString() {
        return StringMaker.new().append(CommonLabels.getInstance().INDEX_LABEL).appendint(_index).append("lastIndex: ").appendint(_lastIndex).append("size: ").appendint(_size).toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels

