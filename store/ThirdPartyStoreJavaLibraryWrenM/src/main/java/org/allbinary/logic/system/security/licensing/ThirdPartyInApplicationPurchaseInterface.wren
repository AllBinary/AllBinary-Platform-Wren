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

class ThirdPartyInApplicationPurchaseInterface is JObject {
    

    isPurchased(lockableFeature) {
        Fiber.abort(JR.exception("AbstractMethodError", "isPurchased"))
    }
    

    onCreate(anyType, stateObject) {
        Fiber.abort(JR.exception("AbstractMethodError", "onCreate"))
    }
    

    onDestroy() {
        Fiber.abort(JR.exception("AbstractMethodError", "onDestroy"))
    }
    

    onStart() {
        Fiber.abort(JR.exception("AbstractMethodError", "onStart"))
    }
    

    onActivityResult(requestCode, resultCode, dataObject) {
        Fiber.abort(JR.exception("AbstractMethodError", "onActivityResult"))
    }
    

    onSaveInstanceState(anyType) {
        Fiber.abort(JR.exception("AbstractMethodError", "onSaveInstanceState"))
    }
    

    onStop() {
        Fiber.abort(JR.exception("AbstractMethodError", "onStop"))
    }
    

    requestPurchase(lockableFeature) {
        Fiber.abort(JR.exception("AbstractMethodError", "requestPurchase"))
    }
    

    requestReceipts() {
        Fiber.abort(JR.exception("AbstractMethodError", "requestReceipts"))
    }
    

    add(lockableFeature) {
        Fiber.abort(JR.exception("AbstractMethodError", "add"))
    }
    

    getUserName() {
        Fiber.abort(JR.exception("AbstractMethodError", "getUserName"))
    }
    

    isEnabled() {
        Fiber.abort(JR.exception("AbstractMethodError", "isEnabled"))
    }
}

import "./LockableFeature" for LockableFeature

