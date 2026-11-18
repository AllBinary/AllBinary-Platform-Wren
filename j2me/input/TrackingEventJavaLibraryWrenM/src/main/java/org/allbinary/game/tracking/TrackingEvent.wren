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
// package org.allbinary.game.tracking

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class TrackingEvent is AllBinaryEventObject {
  layerInterface { _layerInterface }
  layerInterface=(value) { _layerInterface = value }

  initFields_TrackingEvent() {
    _layerInterface = null
        _layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
  }
    

    construct new(allBinaryLayerInterface) {
        super(allBinaryLayerInterface)
        initFields_TrackingEvent()
        if ((allBinaryLayerInterface != TrackingEventHandler.getInstance())) {
            this.setLayerInterface(allBinaryLayerInterface)
        }
    }
    

    init(anyType) {
        this.setSource(anyType)
    }
    

    getLayerInterface() {
        return _layerInterface
    }
    

    setLayerInterface(layerInterface) {
        _layerInterface = layerInterface
    }
    

    setLayerInterfaceForCircularStaticPool(layerInterface) {
        _layerInterface = layerInterface
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("TrackingEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(_layerInterface.toString())
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./TrackingEventHandler" for TrackingEventHandler

