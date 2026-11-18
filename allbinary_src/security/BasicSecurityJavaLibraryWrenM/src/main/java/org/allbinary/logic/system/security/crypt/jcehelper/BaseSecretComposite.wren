/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.security.crypt.jcehelper

import "../../../../../../../allbinary_java" for JObject, JException, JR

class BaseSecretComposite is JObject {
    static NULL_SECRET_COMPOSITE {
    if (__NULL_SECRET_COMPOSITE_set == null) {
      __NULL_SECRET_COMPOSITE_set = true
      __NULL_SECRET_COMPOSITE = BaseSecretComposite.new()
    }
    return __NULL_SECRET_COMPOSITE
  }
  static NULL_SECRET_COMPOSITE=(value) {
    __NULL_SECRET_COMPOSITE_set = true
    __NULL_SECRET_COMPOSITE = value
  }

  initFields_BaseSecretComposite() {
  }

  construct new() {
    super()
    initFields_BaseSecretComposite()
  }
    

    encrypt(array) {
        return NullUtil.getInstance().NULL_BYTE_ARRAY
    }
    

    decrypt(array) {
        return NullUtil.getInstance().NULL_BYTE_ARRAY
    }
}

import "../../../../../../../org/allbinary/logic/NullUtil" for NullUtil

