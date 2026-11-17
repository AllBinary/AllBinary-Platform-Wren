/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class PriorityRunnable is JObject {
    

    getPriority() {
        Fiber.abort(JR.exception("AbstractMethodError", "getPriority"))
    }
    

    isDone() {
        Fiber.abort(JR.exception("AbstractMethodError", "isDone"))
    }
    

    reset() {
        Fiber.abort(JR.exception("AbstractMethodError", "reset"))
    }
}


