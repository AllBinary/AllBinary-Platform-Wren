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
// package org.allbinary.debug

import "../../../allbinary_java" for JObject, JException, JR

class DebugInterface is JObject {
    

    start() {
        Fiber.abort(JR.exception("AbstractMethodError", "start"))
    }
    

    stop() {
        Fiber.abort(JR.exception("AbstractMethodError", "stop"))
    }
    

    getStartTime() {
        Fiber.abort(JR.exception("AbstractMethodError", "getStartTime"))
    }
    

    getMaxTime() {
        Fiber.abort(JR.exception("AbstractMethodError", "getMaxTime"))
    }
    

    isRunning() {
        Fiber.abort(JR.exception("AbstractMethodError", "isRunning"))
    }
}


