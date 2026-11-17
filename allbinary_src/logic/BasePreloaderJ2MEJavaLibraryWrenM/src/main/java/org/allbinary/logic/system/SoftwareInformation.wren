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
// package org.allbinary.logic.system

import "../../../../allbinary_java" for JObject, JException, JR

class SoftwareInformation is JObject {
  name { _name }
  name=(value) { _name = value }
  shortName { _shortName }
  shortName=(value) { _shortName = value }
  version { _version }
  version=(value) { _version = value }

  initFields_SoftwareInformation() {
    _name = null
    _shortName = null
    _version = null
        
        
        
  }
    

    construct new(name, version, shortName) {
    super()
    initFields_SoftwareInformation()
        _name = name
        _version = version
        _shortName = StringMaker.new().append(shortName).append(KotlinUtil.getShortName()).toString()
    }
    

    getName() {
        return _name
    }
    

    getVersion() {
        return _version
    }
    

    toShortString() {
        return _shortName
    }
    

    toString() {
        var NAME = "Name: "
        var VERSION = "Version: "
        var stringBuffer = StringMaker.new()
        stringBuffer.append(NAME)
        stringBuffer.append(this.getName())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(VERSION)
        stringBuffer.append(this.getVersion())
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/KotlinUtil" for KotlinUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps

