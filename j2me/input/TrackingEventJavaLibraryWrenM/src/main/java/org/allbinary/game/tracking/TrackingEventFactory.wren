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
// package org.allbinary.game.tracking

import "../../../../allbinary_java" for JObject, JException, JR

class TrackingEventFactory is JObject {

  initFields_TrackingEventFactory() {
  }
    

    construct new() {
    super()
    initFields_TrackingEventFactory()
    }
    

    getInstance() {
        return TrackingEvent.new(TrackingEventHandler.getInstance())
    }
}

import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface" for AllBinaryEventObjectFactoryInterface
import "./TrackingEvent" for TrackingEvent
import "./TrackingEventHandler" for TrackingEventHandler

