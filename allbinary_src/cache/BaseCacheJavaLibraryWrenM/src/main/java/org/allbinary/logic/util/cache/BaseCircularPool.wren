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

class BaseCircularPool is JObject {
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  OBJECT_ARRAY { _OBJECT_ARRAY }
  OBJECT_ARRAY=(value) { _OBJECT_ARRAY = value }

  initFields_BaseCircularPool() {
    _circularIndexUtil = null
    _OBJECT_ARRAY = null
        _circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL
        _OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY
  }

  construct new() {
    super()
    initFields_BaseCircularPool()
  }
    

    getNextInstance() {
        var anyType = _OBJECT_ARRAY[_circularIndexUtil.getIndex()]
        _circularIndexUtil.next()
        return anyType
    }
    

    init(allBinaryObjectFactoryInterface) {
        _circularIndexUtil.setIndex(0)
        var size = _circularIndexUtil.getSize()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance()
            }
        }
    }
    

    getInstance(index) {
        return _OBJECT_ARRAY[index]
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./AllBinaryObjectFactoryInterface" for AllBinaryObjectFactoryInterface

