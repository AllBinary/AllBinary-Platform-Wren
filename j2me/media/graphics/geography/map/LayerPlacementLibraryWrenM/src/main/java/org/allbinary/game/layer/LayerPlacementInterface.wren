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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class LayerPlacementInterface is JObject {
    

    getWidth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getWidth"))
    }
    

    getHeight() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHeight"))
    }
    

    getLayerType() {
        Fiber.abort(JR.exception("AbstractMethodError", "getLayerType"))
    }
    

    getInstance() {
        Fiber.abort(JR.exception("AbstractMethodError", "getInstance"))
    }
}

import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./LayerPlacementType" for LayerPlacementType

