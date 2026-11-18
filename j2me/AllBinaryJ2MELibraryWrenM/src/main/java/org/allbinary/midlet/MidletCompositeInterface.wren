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
// package org.allbinary.midlet

import "../../../allbinary_java" for JObject, JException, JR

class MidletCompositeInterface is JObject {
    

    setMidlet(midlet) {
        Fiber.abort(JR.exception("AbstractMethodError", "setMidlet"))
    }
    

    getMidlet() {
        Fiber.abort(JR.exception("AbstractMethodError", "getMidlet"))
    }
    

    getDisplayable() {
        Fiber.abort(JR.exception("AbstractMethodError", "getDisplayable"))
    }
}

import "../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../javax/microedition/midlet/MIDlet" for MIDlet
import "./AllBinaryMidlet" for AllBinaryMidlet

