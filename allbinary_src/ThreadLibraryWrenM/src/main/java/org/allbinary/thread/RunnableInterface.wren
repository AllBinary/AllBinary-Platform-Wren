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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR
import "../../../java/lang/Runnable" for Runnable

class RunnableInterface is JObject {
    

    isRunning() {
        Fiber.abort(JR.exception("AbstractMethodError", "isRunning"))
    }
    

    setRunning(isRunning) {
        Fiber.abort(JR.exception("AbstractMethodError", "setRunning"))
    }
    

    setThread(thread) {
        Fiber.abort(JR.exception("AbstractMethodError", "setThread"))
    }
}

import "../../../java/lang/Thread" for Thread

