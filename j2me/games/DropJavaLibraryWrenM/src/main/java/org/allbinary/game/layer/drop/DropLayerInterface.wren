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
// package org.allbinary.game.layer.drop

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/layer/LayerInterface" for LayerInterface

class DropLayerInterface is JObject {
    

    getDroppedLayer() {
        Fiber.abort(JR.exception("AbstractMethodError", "getDroppedLayer"))
    }
}

import "../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterface" for PickedUpLayerInterface

