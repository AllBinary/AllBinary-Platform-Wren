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

class InApplicationPurchaseFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = InApplicationPurchaseFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_InApplicationPurchaseFactory() {
  }
    

    static getInstance() {
        return InApplicationPurchaseFactory.instance
    }
    

    construct new() {
    super()
    initFields_InApplicationPurchaseFactory()
    }
    

    init(anyType, stateObject) {
    }
    

    onCreate(anyType, stateObject) {
    }
    

    onStart() {
    }
    

    onResult(requestCode, resultCode, data) {
    }
    

    onSaveState(anyType) {
    }
    

    onStop() {
    }
    

    onDestroy() {
    }
    

    purchase(lockableFeature) {
    }
    

    isPurchased(lockableFeature) {
        return false
    }
    

    add(lockableFeature) {
    }
    

    getUserName() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    isEnabled() {
        return false
    }
}

import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./LockableFeature" for LockableFeature

