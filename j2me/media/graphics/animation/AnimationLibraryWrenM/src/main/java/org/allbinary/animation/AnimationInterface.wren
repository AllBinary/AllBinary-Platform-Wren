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
import "../../../org/allbinary/graphics/paint/LocationPaintableInterface" for LocationPaintableInterface

class AnimationInterface is JObject {
    

    nextFrame() {
        Fiber.abort(JR.exception("AbstractMethodError", "nextFrame"))
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        Fiber.abort(JR.exception("AbstractMethodError", "paintThreedXYZ"))
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics

