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

class TopUBoundBounceAIFactory is JObject {

  initFields_TopUBoundBounceAIFactory() {
  }

  construct new() {
    super()
    initFields_TopUBoundBounceAIFactory()
  }
    

    getInstance(hashtable, ownerLayerInterface, gameInput) {
        var velocityInterfaceCompositeInterface = ownerLayerInterface
        var velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        var maxDistancePerTick = (JR.shr(velocityInterface.getMaxForwardVelocity(), velocityInterface.getVelocityXBasicDecimalP().getScaledFactor()))
        var halfWidth = (((ownerLayerInterface.getWidth() * 2) + maxDistancePerTick) + 1)
        var halfHeight = (((ownerLayerInterface.getHeight() * 2) + maxDistancePerTick) + 1)
        var point = PointFactory.getInstance().createXY(halfWidth, JR.i32(halfHeight + 60))
        var displayInfo = DisplayInfoSingleton.getInstance()
        var rectangle = Rectangle.new(point, (((displayInfo.getLastWidth() - halfWidth) - point.getX())), (((displayInfo.getLastHeight() - halfHeight) - point.getY())))
        return BoundBounceAI.new(ownerLayerInterface, gameInput, TopULayerBounds.new(rectangle), ReverseVelocityBoundsVisitor.new(ownerLayerInterface))
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/bounds/TopULayerBounds" for TopULayerBounds
import "../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface" for ArtificialIntelligenceInterfaceFactoryInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterface" for VelocityInterface
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./BoundBounceAI" for BoundBounceAI
import "./ReverseVelocityBoundsVisitor" for ReverseVelocityBoundsVisitor

