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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR

class LockedUtilInterface is JObject {
    

    isLocked() {
        Fiber.abort(JR.exception("AbstractMethodError", "isLocked"))
    }
    

    isLockedFeature(lockableFeatrue) {
        Fiber.abort(JR.exception("AbstractMethodError", "isLockedFeature"))
    }
}

import "./LockableFeature" for LockableFeature

