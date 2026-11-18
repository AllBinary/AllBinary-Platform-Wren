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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR

class TimeBaseInterface is JObject {
    

    getTimeBase() {
        Fiber.abort(JR.exception("AbstractMethodError", "getTimeBase"))
    }
    

    setTimeBase(timeBase) {
        Fiber.abort(JR.exception("AbstractMethodError", "setTimeBase"))
    }
}

import "../../../../javax/microedition/media/MediaException" for MediaException
import "../../../../javax/microedition/media/TimeBase" for TimeBase

