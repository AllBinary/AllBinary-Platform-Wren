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
// package org.allbinary.game.combat.destroy.event

import "../../../../../../allbinary_java" for JObject, JException, JR

class DestroyEventFactory is JObject {
  combatGameCanvas { _combatGameCanvas }
  combatGameCanvas=(value) { _combatGameCanvas = value }

  initFields_DestroyEventFactory() {
    _combatGameCanvas = null
        
  }
    

    construct new(combatGameCanvas) {
    super()
    initFields_DestroyEventFactory()
        _combatGameCanvas = combatGameCanvas
    }
    

    getInstance() {
        return DestroyedEvent.new(_combatGameCanvas)
    }
}

import "../../../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface" for AllBinaryEventObjectFactoryInterface
import "./DestroyedEvent" for DestroyedEvent

