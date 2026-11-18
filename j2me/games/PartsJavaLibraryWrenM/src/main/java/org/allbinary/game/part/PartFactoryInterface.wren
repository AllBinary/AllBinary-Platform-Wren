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
// package org.allbinary.game.part

import "../../../../allbinary_java" for JObject, JException, JR

class PartFactoryInterface is JObject {
    

    getInstance(sourceLayerInterface, relativeRelationship) {
        Fiber.abort(JR.exception("AbstractMethodError", "getInstance"))
    }
}

import "../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./PartInterface" for PartInterface

