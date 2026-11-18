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

class PickupBehaviorInterface is JObject {
    

    doPickup(pickupProcessorInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "doPickup"))
    }
    

    doPickupLayer(pickupLayerInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "doPickupLayer"))
    }
}

import "./PickupProcessorInterface" for PickupProcessorInterface
import "./PickedUpLayerInterface" for PickedUpLayerInterface

