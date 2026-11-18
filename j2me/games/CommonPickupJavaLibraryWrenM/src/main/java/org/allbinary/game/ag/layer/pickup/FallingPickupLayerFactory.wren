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

class FallingPickupLayerFactory is JObject {

  initFields_FallingPickupLayerFactory() {
  }

  construct new() {
    super()
    initFields_FallingPickupLayerFactory()
  }
    

    getInstance() {
        return FallingPickupLayer.new(RemoteInfo.REMOTE_INFO)
    }
}

import "../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "./FallingPickupLayer" for FallingPickupLayer

