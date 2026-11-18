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

class ThirdPartyInApplicationPurchase is JObject {

  initFields_ThirdPartyInApplicationPurchase() {
  }

  construct new() {
    super()
    initFields_ThirdPartyInApplicationPurchase()
  }
    

    isPurchased(lockableFeature) {
        return false
    }
    

    onCreate(anyType, stateObject) {
    }
    

    onDestroy() {
    }
    

    onStart() {
    }
    

    onActivityResult(requestCode, resultCode, dataObject) {
    }
    

    onSaveInstanceState(anyType) {
    }
    

    onStop() {
    }
    

    requestPurchase(lockableFeature) {
    }
    

    requestReceipts() {
    }
    

    add(lockableFeature) {
    }
    

    getUserName() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    isEnabled() {
        return false
    }
    

    requestProducts() {
    }
}

import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./ThirdPartyInApplicationPurchaseInterface" for ThirdPartyInApplicationPurchaseInterface
import "./LockableFeature" for LockableFeature

