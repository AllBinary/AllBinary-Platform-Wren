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
import "./BasicLayerProcessorInterface" for BasicLayerProcessorInterface

class LayerProcessorInterface is JObject {
    

    getLayerManager() {
        Fiber.abort(JR.exception("AbstractMethodError", "getLayerManager"))
    }
    

    processAt(allBinaryLayerManager, layerInterface, index) {
        Fiber.abort(JR.exception("AbstractMethodError", "processAt"))
    }
    

    isProcessorLayer(layerInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "isProcessorLayer"))
    }
}

import "./LayerManager" for LayerManager
import "./AllBinaryLayerManager" for AllBinaryLayerManager
import "./AllBinaryLayer" for AllBinaryLayer

