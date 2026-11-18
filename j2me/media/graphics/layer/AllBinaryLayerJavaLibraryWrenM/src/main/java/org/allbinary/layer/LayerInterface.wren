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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR
import "./NamedInterface" for NamedInterface

class LayerInterface is JObject {
    

    getHeight() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHeight"))
    }
    

    getWidth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getWidth"))
    }
    

    getHalfHeight() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHalfHeight"))
    }
    

    getHalfWidth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHalfWidth"))
    }
    

    getXP() {
        Fiber.abort(JR.exception("AbstractMethodError", "getXP"))
    }
    

    getYP() {
        Fiber.abort(JR.exception("AbstractMethodError", "getYP"))
    }
    

    getZP() {
        Fiber.abort(JR.exception("AbstractMethodError", "getZP"))
    }
    

    getX2() {
        Fiber.abort(JR.exception("AbstractMethodError", "getX2"))
    }
    

    getY2() {
        Fiber.abort(JR.exception("AbstractMethodError", "getY2"))
    }
    

    getZ2() {
        Fiber.abort(JR.exception("AbstractMethodError", "getZ2"))
    }
    

    isVisible() {
        Fiber.abort(JR.exception("AbstractMethodError", "isVisible"))
    }
    

    moveDXYZ(dx, dy, dz) {
        Fiber.abort(JR.exception("AbstractMethodError", "moveDXYZ"))
    }
    

    setVisible(visible) {
        Fiber.abort(JR.exception("AbstractMethodError", "setVisible"))
    }
    

    implmentsTickableInterface() {
        Fiber.abort(JR.exception("AbstractMethodError", "implmentsTickableInterface"))
    }
    

    implmentsCollidableInterface() {
        Fiber.abort(JR.exception("AbstractMethodError", "implmentsCollidableInterface"))
    }
    

    implmentsGameInputInterface() {
        Fiber.abort(JR.exception("AbstractMethodError", "implmentsGameInputInterface"))
    }
    

    implmentsArtificialIntelligenceCompositeInterface() {
        Fiber.abort(JR.exception("AbstractMethodError", "implmentsArtificialIntelligenceCompositeInterface"))
    }
    

    getType() {
        Fiber.abort(JR.exception("AbstractMethodError", "getType"))
    }
}

import "../../../org/allbinary/game/identification/GroupInterfaceCompositeInterface" for GroupInterfaceCompositeInterface
import "../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "./PositionInterface" for PositionInterface

