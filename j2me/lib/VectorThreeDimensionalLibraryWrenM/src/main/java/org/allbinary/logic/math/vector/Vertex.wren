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
// package org.allbinary.logic.math.vector

import "../../../../../allbinary_java" for JObject, JException, JR

class Vertex is JObject {
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  z { _z }
  z=(value) { _z = value }

  initFields_Vertex() {
    _x = null
    _y = null
    _z = null
        _x = BasicDecimal.new(0)
        _y = BasicDecimal.new(0)
        _z = BasicDecimal.new(0)
  }
    

    construct new() {
    super()
    initFields_Vertex()
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        var positionStrings = PositionStrings.getInstance()
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(_x.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(_y.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(_z.toString())
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/math/PositionStrings" for PositionStrings
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps

