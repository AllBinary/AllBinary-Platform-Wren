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
// package org.allbinary.physics.movement

import "../../../../allbinary_java" for JObject, JException, JR

class MovementInterface is JObject {
    

    init(speedBasicDecimal, angle, otherAngle) {
        Fiber.abort(JR.exception("AbstractMethodError", "init"))
    }
    

    process(layer) {
        Fiber.abort(JR.exception("AbstractMethodError", "process"))
    }
    

    stop() {
        Fiber.abort(JR.exception("AbstractMethodError", "stop"))
    }
}

import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer
import "../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal

