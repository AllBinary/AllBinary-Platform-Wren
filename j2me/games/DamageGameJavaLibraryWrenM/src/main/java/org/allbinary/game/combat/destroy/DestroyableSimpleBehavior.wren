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
// package org.allbinary.game.combat.destroy

import "../../../../../allbinary_java" for JObject, JException, JR
import "./DestroyableBaseBehavior" for DestroyableBaseBehavior

class DestroyableSimpleBehavior is DestroyableBaseBehavior {
  ownerLayer { _ownerLayer }
  ownerLayer=(value) { _ownerLayer = value }
  destroyed { _destroyed }
  destroyed=(value) { _destroyed = value }

  initFields_DestroyableSimpleBehavior() {
    _ownerLayer = null
    _destroyed = false
        
        _destroyed = false
  }
    

    construct new(ownerLayer) {
    super()
    initFields_DestroyableSimpleBehavior()
        _ownerLayer = ownerLayer
    }
    

    isDestroyed() {
        return _destroyed
    }
    

    setDestroyed(destroyed) {
        _destroyed = destroyed
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(_ownerLayer)
        }
    }
}

import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "./DestroyedLayerProcessor" for DestroyedLayerProcessor

