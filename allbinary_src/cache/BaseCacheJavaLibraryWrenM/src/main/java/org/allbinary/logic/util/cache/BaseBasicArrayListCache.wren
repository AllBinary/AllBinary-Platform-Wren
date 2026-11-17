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

class BaseBasicArrayListCache is JObject {
  list { _list }
  list=(value) { _list = value }

  initFields_BaseBasicArrayListCache() {
    _list = null
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_BaseBasicArrayListCache()
  }
    

    log() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("S: ")
        stringBuffer.appendint(_list.size())
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

