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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR
import "./AbeClientInformation" for AbeClientInformation

class StoreAppClientInformation is AbeClientInformation {
  longArrayIdentifier { _longArrayIdentifier }
  longArrayIdentifier=(value) { _longArrayIdentifier = value }

  initFields_StoreAppClientInformation() {
    _longArrayIdentifier = null
        
  }
    

    construct new(name, version, specialName, shortName, longArrayIdentifier) {
        super(name, version, specialName, shortName)
        initFields_StoreAppClientInformation()
        _longArrayIdentifier = longArrayIdentifier
    }
    

    getLongArrayIdentifier() {
        return _longArrayIdentifier
    }
}

import "../../../../../../org/allbinary/thirdparty/store/LongArrayIdentifierInterface" for LongArrayIdentifierInterface

