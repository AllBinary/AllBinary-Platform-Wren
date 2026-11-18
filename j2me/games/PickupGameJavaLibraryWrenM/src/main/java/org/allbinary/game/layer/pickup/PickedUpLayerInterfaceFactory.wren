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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR
import "./PickedUpLayerInterfaceFactoryBase" for PickedUpLayerInterfaceFactoryBase

class PickedUpLayerInterfaceFactory is PickedUpLayerInterfaceFactoryBase {
  pickedUpLayerType { _pickedUpLayerType }
  pickedUpLayerType=(value) { _pickedUpLayerType = value }
  iconLayer { _iconLayer }
  iconLayer=(value) { _iconLayer = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_PickedUpLayerInterfaceFactory() {
    _pickedUpLayerType = null
    _iconLayer = null
    _animationInterface = null
        
        
        
  }
    

    construct new(pickeUpLayerType, iconLayer, animationInterface) {
    super()
    initFields_PickedUpLayerInterfaceFactory()
        _pickedUpLayerType = pickeUpLayerType
        _animationInterface = animationInterface
        _iconLayer = iconLayer
    }
    

    getIconLayer() {
        return _iconLayer
    }
    

    getAnimationInterface() {
        return _animationInterface
    }
    

    getPickedUpLayerType() {
        return _pickedUpLayerType
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./PickedUpLayerType" for PickedUpLayerType
import "./IconLayer" for IconLayer

