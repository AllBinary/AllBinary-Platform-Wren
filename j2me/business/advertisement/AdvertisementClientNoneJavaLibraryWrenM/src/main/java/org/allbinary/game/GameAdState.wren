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
// package org.allbinary.game

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/business/advertisement/GameAdStateBase" for GameAdStateBase

class GameAdState is GameAdStateBase {

  initFields_GameAdState() {
  }
    

    construct new(adConfiguration) {
        super(adConfiguration)
        VirtualKeyboardEventHandler.getInstance().addListenerInterface(this)
    }
    

    onVirtualKeyboardEvent(virtualKeyboardEvent) {
    }
    

    onEvent(eventObject) {
        super.onEvent(eventObject)
    }
}

import "../../../org/allbinary/business/advertisement/AdConfiguration" for AdConfiguration
import "../../../org/allbinary/input/event/VirtualKeyboardEvent" for VirtualKeyboardEvent
import "../../../org/allbinary/input/event/VirtualKeyboardEventHandler" for VirtualKeyboardEventHandler
import "../../../org/allbinary/input/event/VirtualKeyboardEventListenerInterface" for VirtualKeyboardEventListenerInterface
import "../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

