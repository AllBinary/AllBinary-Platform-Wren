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
// package org.allbinary.logic.system.hardware.components.interfaces

import "../../../../../../../allbinary_java" for JObject, JException, JR

class CpuInterface is JObject {
    

    getProcessor() {
        Fiber.abort(JR.exception("AbstractMethodError", "getProcessor"))
    }
    

    getVendorId() {
        Fiber.abort(JR.exception("AbstractMethodError", "getVendorId"))
    }
    

    getCpuFamily() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCpuFamily"))
    }
    

    getModel() {
        Fiber.abort(JR.exception("AbstractMethodError", "getModel"))
    }
    

    getModelName() {
        Fiber.abort(JR.exception("AbstractMethodError", "getModelName"))
    }
    

    getStepping() {
        Fiber.abort(JR.exception("AbstractMethodError", "getStepping"))
    }
    

    getCpuSpeed() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCpuSpeed"))
    }
    

    getCacheSize() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCacheSize"))
    }
    

    compareTo(cpuInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "compareTo"))
    }
}


