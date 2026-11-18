/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

class CacheType is JObject {
  vendor { _vendor }
  vendor=(value) { _vendor = value }
  type { _type }
  type=(value) { _type = value }

  initFields_CacheType() {
    _vendor = null
    _type = null
        
        
  }
    

    construct new(vendor, type) {
    super()
    initFields_CacheType()
        _vendor = vendor
        _type = type
    }
    

    getVendor() {
        return _vendor
    }
    

    getType() {
        return _type
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("CacheType: Vendor: ")
        stringBuffer.append(this.getVendor())
        stringBuffer.append(" Type: ")
        stringBuffer.append(this.getType())
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker

