/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
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

