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
// package org.allbinary.game.ag.ai

import "../../../../../allbinary_java" for JObject, JException, JR

class ReverseVelocityBoundsVisitor is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  velocityInterface { _velocityInterface }
  velocityInterface=(value) { _velocityInterface = value }
  layerInterface { _layerInterface }
  layerInterface=(value) { _layerInterface = value }

  initFields_ReverseVelocityBoundsVisitor() {
    _logUtil = null
    _velocityInterface = null
    _layerInterface = null
        _logUtil = LogUtil.getInstance()
        
        
  }
    

    construct new(layerInterface) {
    super()
    initFields_ReverseVelocityBoundsVisitor()
        _layerInterface = layerInterface
        var velocityInterfaceCompositeInterface = layerInterface
        _velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
    }
    

    getX() {
        return _layerInterface.getXP()
    }
    

    getY() {
        return _layerInterface.getYP()
    }
    

    minX() {
        if ((_velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0)) {
            _velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        }
    }
    

    maxX() {
        if ((_velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0)) {
            _velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        }
    }
    

    minY() {
        if ((_velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0)) {
            _velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        }
    }
    

    maxY() {
        if ((_velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0)) {
            _velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        }
    }
}

import "../../../../../org/allbinary/bounds/BoundsVisitorInterface" for BoundsVisitorInterface
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterface" for VelocityInterface
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../org/allbinary/layer/LayerInterface" for LayerInterface
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil

