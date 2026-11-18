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
// package org.allbinary.logic.control.validate

import "../../../../../allbinary_java" for JObject, JException, JR

class ValidatorBaseInterface is JObject {
    

    isValid() {
        Fiber.abort(JR.exception("AbstractMethodError", "isValid"))
    }
    

    validationInfo() {
        Fiber.abort(JR.exception("AbstractMethodError", "validationInfo"))
    }
    

    toHashtable() {
        Fiber.abort(JR.exception("AbstractMethodError", "toHashtable"))
    }
    

    toList() {
        Fiber.abort(JR.exception("AbstractMethodError", "toList"))
    }
}

import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../java/lang/Boolean" for Boolean

