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
import "./BasicAnimationInterfaceFactoryInterface" for BasicAnimationInterfaceFactoryInterface

class AnimationInterfaceFactoryInterface is JObject {
    

    getInstance(instanceId) {
        Fiber.abort(JR.exception("AbstractMethodError", "getInstance"))
    }
    

    setInitialScale(scaleProperties) {
        Fiber.abort(JR.exception("AbstractMethodError", "setInitialScale"))
    }
}

import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./Animation" for Animation

