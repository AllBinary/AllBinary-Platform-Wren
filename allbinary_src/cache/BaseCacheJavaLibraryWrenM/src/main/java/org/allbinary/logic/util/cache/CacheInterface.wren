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
// package org.allbinary.logic.util.cache

import "../../../../../allbinary_java" for JObject, JException, JR

class CacheInterface is JObject {
    

    add(cacheableInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "add"))
    }
    

    addArray(cacheableInterfaces) {
        Fiber.abort(JR.exception("AbstractMethodError", "addArray"))
    }
    

    clear() {
        Fiber.abort(JR.exception("AbstractMethodError", "clear"))
    }
}

import "./CacheableInterface" for CacheableInterface

