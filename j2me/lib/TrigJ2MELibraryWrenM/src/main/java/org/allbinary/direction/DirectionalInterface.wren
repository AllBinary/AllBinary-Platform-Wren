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
// package org.allbinary.direction

import "../../../allbinary_java" for JObject, JException, JR

class DirectionalInterface is JObject {
    

    setFrameByDirection(direction) {
        Fiber.abort(JR.exception("AbstractMethodError", "setFrameByDirection"))
    }
    

    setFrameToAngle(angle) {
        Fiber.abort(JR.exception("AbstractMethodError", "setFrameToAngle"))
    }
    

    adjustFrameToAngle(newAngle) {
        Fiber.abort(JR.exception("AbstractMethodError", "adjustFrameToAngle"))
    }
    

    adjustFrame(angle) {
        Fiber.abort(JR.exception("AbstractMethodError", "adjustFrame"))
    }
}

import "../../../org/allbinary/math/Angle" for Angle
import "./Direction" for Direction

