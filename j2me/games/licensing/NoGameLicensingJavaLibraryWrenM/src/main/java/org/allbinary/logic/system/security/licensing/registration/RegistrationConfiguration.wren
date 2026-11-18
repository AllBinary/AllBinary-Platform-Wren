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
// package org.allbinary.logic.system.security.licensing.registration

import "../../../../../../../allbinary_java" for JObject, JException, JR

class RegistrationConfiguration is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = RegistrationConfiguration.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  registrationCode { _registrationCode }
  registrationCode=(value) { _registrationCode = value }
  NAME { _NAME }
  NAME=(value) { _NAME = value }

  initFields_RegistrationConfiguration() {
    _registrationCode = null
    _NAME = null
        _registrationCode = "No Registration Code"
        _NAME = "registrationid"
  }
    

    construct new() {
    super()
    initFields_RegistrationConfiguration()
    }
    

    static getInstance() {
        return RegistrationConfiguration.SINGLETON
    }
    

    read() {
    }
    

    write() {
    }
    

    toString() {
        return StringMaker.new().append("Registration Code: ").append(this.getRegistrationCode()).toString()
    }
    

    setRegistrationCode(registrationCode) {
        _registrationCode = registrationCode
    }
    

    getRegistrationCode() {
        return _registrationCode
    }
}

import "../../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker

