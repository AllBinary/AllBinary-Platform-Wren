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
// package org.allbinary.graphics.color

import "../../../../allbinary_java" for JObject, JException, JR

class BasicColorArrayIndexer is JObject {
  basicColorArray { _basicColorArray }
  basicColorArray=(value) { _basicColorArray = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }

  initFields_BasicColorArrayIndexer() {
    _basicColorArray = null
    _circularIndexUtil = null
        
        
  }
    

    construct new(basicColorArray) {
    super()
    initFields_BasicColorArrayIndexer()
        _basicColorArray = basicColorArray
        _circularIndexUtil = CircularIndexUtil.createInstance(_basicColorArray.count)
    }
    

    next() {
        _circularIndexUtil.next()
    }
    

    get() {
        return _basicColorArray[_circularIndexUtil.getIndex()]
    }
    

    getBasicColorArray() {
        return _basicColorArray
    }
}

import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./BasicColor" for BasicColor

