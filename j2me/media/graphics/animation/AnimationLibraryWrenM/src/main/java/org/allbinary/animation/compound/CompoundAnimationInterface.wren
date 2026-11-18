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
// package org.allbinary.animation.compound

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/AnimationInterface" for AnimationInterface

class CompoundAnimationInterface is JObject {
    

    nextAnimation() {
        Fiber.abort(JR.exception("AbstractMethodError", "nextAnimation"))
    }
    

    previousAnimation() {
        Fiber.abort(JR.exception("AbstractMethodError", "previousAnimation"))
    }
    

    setAnimation(index) {
        Fiber.abort(JR.exception("AbstractMethodError", "setAnimation"))
    }
    

    getCurrentAnimation() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCurrentAnimation"))
    }
}

import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

