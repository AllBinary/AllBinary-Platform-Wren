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
import "./SpecialGameInputInterfaceProcessor" for SpecialGameInputInterfaceProcessor

class SpecialStrafeLeftGameInputInterfaceProcessor is SpecialGameInputInterfaceProcessor {

  initFields_SpecialStrafeLeftGameInputInterfaceProcessor() {
  }
    

    construct new(collidableDestroyableDamageableLayer) {
        super(collidableDestroyableDamageableLayer)
    }
    

    processEvent(allbinaryLayerManager, gameKeyEvent) {
        this.specialGameInputInterface.strafeLeft()
    }
}

import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./SpecialGameInputInterface" for SpecialGameInputInterface

