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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface

class SpecialGameInputInterface is JObject {
    

    up() {
        Fiber.abort(JR.exception("AbstractMethodError", "up"))
    }
    

    down() {
        Fiber.abort(JR.exception("AbstractMethodError", "down"))
    }
    

    right() {
        Fiber.abort(JR.exception("AbstractMethodError", "right"))
    }
    

    left() {
        Fiber.abort(JR.exception("AbstractMethodError", "left"))
    }
    

    strafeLeft() {
        Fiber.abort(JR.exception("AbstractMethodError", "strafeLeft"))
    }
    

    strafeRight() {
        Fiber.abort(JR.exception("AbstractMethodError", "strafeRight"))
    }
    

    fire(layerManager, gameKeyEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "fire"))
    }
    

    special1(layerManager, gameKeyEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "special1"))
    }
    

    special2(layerManager, gameKeyEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "special2"))
    }
    

    special3(layerManager, gameKeyEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "special3"))
    }
    

    special4(layerManager, gameKeyEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "special4"))
    }
    

    special5(layerManager, gameKeyEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "special5"))
    }
}

import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

