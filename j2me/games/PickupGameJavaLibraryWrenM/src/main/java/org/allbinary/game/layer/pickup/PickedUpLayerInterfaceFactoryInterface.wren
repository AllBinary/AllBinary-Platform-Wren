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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR

class PickedUpLayerInterfaceFactoryInterface is JObject {
    

    getPickedUpLayerType() {
        Fiber.abort(JR.exception("AbstractMethodError", "getPickedUpLayerType"))
    }
    

    getIconLayer() {
        Fiber.abort(JR.exception("AbstractMethodError", "getIconLayer"))
    }
    

    getAnimationInterface() {
        Fiber.abort(JR.exception("AbstractMethodError", "getAnimationInterface"))
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./PickedUpLayerType" for PickedUpLayerType

