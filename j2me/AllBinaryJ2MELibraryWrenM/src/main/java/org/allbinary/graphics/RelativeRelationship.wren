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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class RelativeRelationship is JObject {
    static NULL_RELATIVE_RELATIONSHIP {
    if (__NULL_RELATIVE_RELATIONSHIP_set == null) {
      __NULL_RELATIVE_RELATIONSHIP_set = true
      __NULL_RELATIVE_RELATIONSHIP = RelativeRelationship.new(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance())
    }
    return __NULL_RELATIVE_RELATIONSHIP
  }
  static NULL_RELATIVE_RELATIONSHIP=(value) {
    __NULL_RELATIVE_RELATIONSHIP_set = true
    __NULL_RELATIVE_RELATIONSHIP = value
  }
  typesAllowedList { _typesAllowedList }
  typesAllowedList=(value) { _typesAllowedList = value }
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  z { _z }
  z=(value) { _z = value }

  initFields_RelativeRelationship() {
    _typesAllowedList = null
    _x = 0
    _y = 0
    _z = 0
        
        
        
        
  }
    

    construct new(point, typesAllowedList) {
    super()
    initFields_RelativeRelationship()
        _x = point.getX()
        _y = point.getY()
        _z = point.getZ()
        _typesAllowedList = typesAllowedList
    }
    

    getX() {
        return _x
    }
    

    getY() {
        return _y
    }
    

    getZ() {
        return _z
    }
    

    getTypesAllowedList() {
        return _typesAllowedList
    }
    

    setTypesAllowedList(typesAllowedList) {
        _typesAllowedList = typesAllowedList
    }
}

import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "./PointFactory" for PointFactory
import "./GPoint" for GPoint

