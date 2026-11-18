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
// package org.allbinary.game.terrain

import "../../../../allbinary_java" for JObject, JException, JR

class TerrainEventFactory is JObject {

  initFields_TerrainEventFactory() {
  }
    

    construct new() {
    super()
    initFields_TerrainEventFactory()
    }
    

    getInstance() {
        return TerrainEvent.new(NullUtil.getInstance().NULL_OBJECT)
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface" for AllBinaryEventObjectFactoryInterface
import "./TerrainEvent" for TerrainEvent

