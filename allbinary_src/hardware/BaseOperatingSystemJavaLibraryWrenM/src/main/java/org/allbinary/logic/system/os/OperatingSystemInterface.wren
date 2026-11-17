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
// package org.allbinary.logic.system.os

import "../../../../../allbinary_java" for JObject, JException, JR

class OperatingSystemInterface is JObject {
    

    getName() {
        Fiber.abort(JR.exception("AbstractMethodError", "getName"))
    }
    

    getVersion() {
        Fiber.abort(JR.exception("AbstractMethodError", "getVersion"))
    }
    

    getArch() {
        Fiber.abort(JR.exception("AbstractMethodError", "getArch"))
    }
    

    getCharacterSet() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCharacterSet"))
    }
    

    isOverScan() {
        Fiber.abort(JR.exception("AbstractMethodError", "isOverScan"))
    }
    

    getOverScanXPercent() {
        Fiber.abort(JR.exception("AbstractMethodError", "getOverScanXPercent"))
    }
    

    getOverScanYPercent() {
        Fiber.abort(JR.exception("AbstractMethodError", "getOverScanYPercent"))
    }
    

    isScalable() {
        Fiber.abort(JR.exception("AbstractMethodError", "isScalable"))
    }
    

    isAutoHide() {
        Fiber.abort(JR.exception("AbstractMethodError", "isAutoHide"))
    }
    

    toString() {
        Fiber.abort(JR.exception("AbstractMethodError", "toString"))
    }
}

import "../../../../../org/allbinary/logic/java/character/CharacterSet" for CharacterSet

