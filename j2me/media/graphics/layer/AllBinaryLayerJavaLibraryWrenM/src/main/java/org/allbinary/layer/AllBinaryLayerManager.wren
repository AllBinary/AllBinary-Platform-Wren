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
import "./LayerManager" for LayerManager

class AllBinaryLayerManager is LayerManager {
  layerManagerEventHandler { _layerManagerEventHandler }
  layerManagerEventHandler=(value) { _layerManagerEventHandler = value }
  createLayerManagerEvent { _createLayerManagerEvent }
  createLayerManagerEvent=(value) { _createLayerManagerEvent = value }
  deleteLayerManagerEvent { _deleteLayerManagerEvent }
  deleteLayerManagerEvent=(value) { _deleteLayerManagerEvent = value }
  basicLayerProcessorArray { _basicLayerProcessorArray }
  basicLayerProcessorArray=(value) { _basicLayerProcessorArray = value }

  initFields_AllBinaryLayerManager() {
    _layerManagerEventHandler = null
    _createLayerManagerEvent = null
    _deleteLayerManagerEvent = null
    _basicLayerProcessorArray = null
        _layerManagerEventHandler = LayerManagerEventHandler.getInstance()
        _createLayerManagerEvent = LayerManagerEvent.new(this, _layerManagerEventHandler.CREATE)
        _deleteLayerManagerEvent = LayerManagerEvent.new(this, _layerManagerEventHandler.DELETE)
        _basicLayerProcessorArray = List.filled(0, null)
  }
    

    construct new() {
        super(LayerManagerNoDebug.getInstance())
        initFields_AllBinaryLayerManager()
    }
    

    getLayerProcessorArray() {
        return _basicLayerProcessorArray
    }
    

    setLayerProcessorArray(layerProcessorArray) {
        _basicLayerProcessorArray = layerProcessorArray
    }
    

    log() {
        var size = _basicLayerProcessorArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var layerProcessorInterface = _basicLayerProcessorArray[index]
            }
        }
    }
    

    append(layerInterface) {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface)
            super.append(layerInterface)
        }
    }
    

    appendAt(layerInterface, index) {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface)
            super.appendAt(layerInterface, index)
        }
    }
    

    appendProcessors(layerInterface) {
        _createLayerManagerEvent.setLayerInterface(layerInterface)
        _layerManagerEventHandler.fireEvent(_createLayerManagerEvent)
        var layerProcessorInterface = null
        if (true) {
            var index = _basicLayerProcessorArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            layerProcessorInterface = _basicLayerProcessorArray[index]
            if (layerProcessorInterface.isProcessorLayer(layerInterface)) {
                layerProcessorInterface.getLayerManager().append(layerInterface)
            }
            }
        }
    }
    

    remove(layerInterface) {
        _deleteLayerManagerEvent.setLayerInterface(layerInterface)
        _layerManagerEventHandler.fireDeleteEvent(_deleteLayerManagerEvent)
        var layerProcessorInterface = null
        if (true) {
            var index = _basicLayerProcessorArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            layerProcessorInterface = _basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().remove(layerInterface)
            }
        }
        super.remove(layerInterface)
    }
    

    process() {
        var layerProcessorInterface = null
        var size = _basicLayerProcessorArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            layerProcessorInterface = _basicLayerProcessorArray[index]
            layerProcessorInterface.process(this)
            }
        }
    }
    

    cleanup() {
        var layerProcessorInterface = null
        var size = _basicLayerProcessorArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            layerProcessorInterface = _basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().cleanup()
            }
        }
        super.cleanup()
    }
}

import "../../../org/allbinary/layer/event/LayerManagerEvent" for LayerManagerEvent
import "../../../org/allbinary/layer/event/LayerManagerEventHandler" for LayerManagerEventHandler
import "./LayerProcessor" for LayerProcessor
import "./LayerManagerNoDebug" for LayerManagerNoDebug
import "./AllBinaryLayer" for AllBinaryLayer

