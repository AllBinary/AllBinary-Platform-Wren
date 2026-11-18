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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./IndexedAnimationInterface" for IndexedAnimationInterface

class RotationAnimationInterface is JObject {
    

    getAngleInfoP() {
        Fiber.abort(JR.exception("AbstractMethodError", "getAngleInfoP"))
    }
    

    nextRotation() {
        Fiber.abort(JR.exception("AbstractMethodError", "nextRotation"))
    }
    

    previousRotation() {
        Fiber.abort(JR.exception("AbstractMethodError", "previousRotation"))
    }
}

import "../../../org/allbinary/direction/DirectionalInterface" for DirectionalInterface
import "../../../org/allbinary/math/AngleInfo" for AngleInfo

