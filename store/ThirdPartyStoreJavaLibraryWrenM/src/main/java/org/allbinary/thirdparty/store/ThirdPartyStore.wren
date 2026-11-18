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
// package org.allbinary.thirdparty.store

import "../../../../allbinary_java" for JObject, JException, JR

class ThirdPartyStore is JObject {
  authorized { _authorized }
  authorized=(value) { _authorized = value }
  name { _name }
  name=(value) { _name = value }

  initFields_ThirdPartyStore() {
    _authorized = false
    _name = null
        _authorized = false
        
  }
    

    construct new(name) {
    super()
    initFields_ThirdPartyStore()
        _name = name
    }
    

    authorize(clientInformationInterface) {
    }
    

    isAuthorized() {
        return _authorized
    }
    

    setAuthorized(authorized) {
        _authorized = authorized
    }
    

    getName() {
        return _name
    }
}

import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface

