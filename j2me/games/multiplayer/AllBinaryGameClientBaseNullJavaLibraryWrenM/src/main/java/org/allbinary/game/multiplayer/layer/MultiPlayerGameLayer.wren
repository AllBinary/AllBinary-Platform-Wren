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
// package org.allbinary.game.multiplayer.layer

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer

class MultiPlayerGameLayer is CollidableDestroyableDamageableLayer {

  initFields_MultiPlayerGameLayer() {
  }
    

    construct new(remoteInfo, groupInterface, name, layerInfo, viewPosition) {
        super(groupInterface, name, layerInfo, viewPosition)
    }
    

    getMultiplayerBehavior() {
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR
    }
    

    setPingInfo(show) {
    }
    

    setFiring(firing) {
    }
    

    getFiring() {
        return 0
    }
}

import "../../../../../org/allbinary/game/identification/Group" for Group
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "./MultiPlayerGameLayerInterface" for MultiPlayerGameLayerInterface
import "./RemoteInfo" for RemoteInfo
import "./MultiplayerBehavior" for MultiplayerBehavior

