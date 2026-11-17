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
// package org.allbinary.logic.system.hardware

import "../../../../../allbinary_java" for JObject, JException, JR

class HardwareInterface is JObject {
    

    getComponent(index) {
        Fiber.abort(JR.exception("AbstractMethodError", "getComponent"))
    }
    

    toString() {
        Fiber.abort(JR.exception("AbstractMethodError", "toString"))
    }
    

    compareTo(hardwareInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "compareTo"))
    }
    

    difference(hardwareInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "difference"))
    }
}

import "../../../../../org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" for HardwareComponentInterface
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable

