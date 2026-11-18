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

class BasicLayerPlacement is JObject {
  layerType { _layerType }
  layerType=(value) { _layerType = value }
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }

  initFields_BasicLayerPlacement() {
    _layerType = null
    _width = 0
    _height = 0
        
        
        
  }
    

    construct new(layerType, width, height) {
    super()
    initFields_BasicLayerPlacement()
        _layerType = layerType
        _width = width
        _height = height
    }
    

    getWidth() {
        return _width
    }
    

    getHeight() {
        return _height
    }
    

    getLayerType() {
        return _layerType
    }
    

    setLayerType(layerType) {
        _layerType = layerType
    }
}

import "./LayerPlacementType" for LayerPlacementType

