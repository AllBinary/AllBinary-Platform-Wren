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
import "./LayerProcessor" for LayerProcessor

class SingleLayerLayerProcessor is LayerProcessor {

  initFields_SingleLayerLayerProcessor() {
  }
    

    construct new() {
        super(SingleLayerLayerManager.new())
    }
    

    process(allBinaryLayerManager) {
        var layerManager = this.getLayerManager()
        this.processAt(allBinaryLayerManager, layerManager.getLayerAt(0), 0)
    }
}

import "./SingleLayerLayerManager" for SingleLayerLayerManager
import "./LayerManager" for LayerManager
import "./AllBinaryLayer" for AllBinaryLayer
import "./AllBinaryLayerManager" for AllBinaryLayerManager

