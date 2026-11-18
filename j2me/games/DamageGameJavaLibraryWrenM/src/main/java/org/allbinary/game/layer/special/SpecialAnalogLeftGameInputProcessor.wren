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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR
import "./SpecialGameInputProcessor" for SpecialGameInputProcessor

class SpecialAnalogLeftGameInputProcessor is SpecialGameInputProcessor {

  initFields_SpecialAnalogLeftGameInputProcessor() {
  }
    

    construct new(collidableDestroyableDamageableLayer) {
        super(collidableDestroyableDamageableLayer)
    }
    

    processAnalog(allbinaryLayerManager, gameKeyEvent, xAnalogValue) {
        this.collidableDestroyableDamageableLayer.leftAnalog(xAnalogValue)
    }
}

import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer

