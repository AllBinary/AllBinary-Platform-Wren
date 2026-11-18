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
// package org.allbinary.game.ag.layer.pickup

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/layer/pickup/PickupLayer" for PickupLayer

class FallingPickupLayer is PickupLayer {
    static NAME { "FallingPickupLayer" }

  initFields_FallingPickupLayer() {
  }
    

    construct new(remoteInfo) {
        super(FallingPickupLayer.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().getInstance(0), Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
    }
    

    processTick(allBinaryLayerManager) {
        this.setPosition(this.x, (this.y + 1), this.z)
    }
    

    implmentsTickableInterface() {
        return true
    }
}

import "../../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory
import "../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../../org/allbinary/game/tick/TickableInterface" for TickableInterface
import "../../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/view/ViewPosition" for ViewPosition

