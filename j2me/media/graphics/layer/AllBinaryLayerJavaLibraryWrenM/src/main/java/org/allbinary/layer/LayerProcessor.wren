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

class LayerProcessor is JObject {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  layerManager { _layerManager }
  layerManager=(value) { _layerManager = value }

  initFields_LayerProcessor() {
    _commonStrings = null
    _layerManager = null
        _commonStrings = CommonStrings.getInstance()
        
  }
    

    construct new(layerManager) {
    super()
    initFields_LayerProcessor()
        _layerManager = layerManager
    }
    

    processAt(allBinaryLayerManager, layerInterface, index) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    isProcessorLayer(layerInterface) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    getLayerManager() {
        return _layerManager
    }
    

    process(allBinaryLayerManager) {
        var layerManager = this.getLayerManager()
        var size = layerManager.getSize()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            this.processAt(allBinaryLayerManager, layerManager.getLayerAt(index), index)
            }
        }
    }
}

import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./LayerProcessorInterface" for LayerProcessorInterface
import "./LayerManager" for LayerManager
import "./AllBinaryLayerManager" for AllBinaryLayerManager
import "./AllBinaryLayer" for AllBinaryLayer

