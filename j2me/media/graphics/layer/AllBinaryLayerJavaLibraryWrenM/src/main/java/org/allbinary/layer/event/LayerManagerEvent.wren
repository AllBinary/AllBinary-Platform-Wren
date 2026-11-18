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
// package org.allbinary.layer.event

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class LayerManagerEvent is AllBinaryEventObject {
  layerInterface { _layerInterface }
  layerInterface=(value) { _layerInterface = value }
  crud { _crud }
  crud=(value) { _crud = value }

  initFields_LayerManagerEvent() {
    _layerInterface = null
    _crud = null
        _layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
        
  }
    

    construct new(layerManager, crud) {
        super(layerManager)
        initFields_LayerManagerEvent()
        _crud = crud
    }
    

    getLayerInterface() {
        return _layerInterface
    }
    

    setLayerInterface(layerInterface) {
        _layerInterface = layerInterface
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("LayerManagerEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(this.getLayerInterface().toString())
        stringBuffer.append("\nCRUD: ")
        stringBuffer.append(_crud)
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/LayerManager" for LayerManager
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker

