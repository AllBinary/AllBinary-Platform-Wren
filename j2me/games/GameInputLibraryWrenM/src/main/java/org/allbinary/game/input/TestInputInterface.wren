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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface

class TestInputInterface is JObject {
    

    up() {
        Fiber.abort(JR.exception("AbstractMethodError", "up"))
    }
    

    down() {
        Fiber.abort(JR.exception("AbstractMethodError", "down"))
    }
    

    left() {
        Fiber.abort(JR.exception("AbstractMethodError", "left"))
    }
    

    right() {
        Fiber.abort(JR.exception("AbstractMethodError", "right"))
    }
    

    strafeLeft() {
        Fiber.abort(JR.exception("AbstractMethodError", "strafeLeft"))
    }
    

    strafeRight() {
        Fiber.abort(JR.exception("AbstractMethodError", "strafeRight"))
    }
}


