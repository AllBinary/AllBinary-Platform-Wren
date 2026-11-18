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
import "../../../../../org/allbinary/game/ai/BasicAI" for BasicAI

class BoundBounceAI is BasicAI {
  currentRelativeAngle { _currentRelativeAngle }
  currentRelativeAngle=(value) { _currentRelativeAngle = value }
  layerBounds { _layerBounds }
  layerBounds=(value) { _layerBounds = value }
  boundsVisitorInterface { _boundsVisitorInterface }
  boundsVisitorInterface=(value) { _boundsVisitorInterface = value }

  initFields_BoundBounceAI() {
    _currentRelativeAngle = 0
    _layerBounds = null
    _boundsVisitorInterface = null
        _currentRelativeAngle = 0
        
        
  }
    

    construct new(ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface) {
        super(ownerLayerInterface, gameInput)
        initFields_BoundBounceAI()
        _layerBounds = layerBounds
        _boundsVisitorInterface = boundsVisitorInterface
    }
    

    paint(graphics) {
        var rectange = _layerBounds.getRectangleP()
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight())
    }
    

    processAI(allBinaryLayerManager) {
        _layerBounds.visit(_boundsVisitorInterface)
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/bounds/BoundsVisitorInterface" for BoundsVisitorInterface
import "../../../../../org/allbinary/bounds/LayerBounds" for LayerBounds
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

