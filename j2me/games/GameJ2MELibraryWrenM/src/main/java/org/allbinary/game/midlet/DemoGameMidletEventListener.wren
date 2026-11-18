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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/EventListenerInterface" for EventListenerInterface

class DemoGameMidletEventListener is JObject {
    

    onDemoStart() {
        Fiber.abort(JR.exception("AbstractMethodError", "onDemoStart"))
    }
    

    onGameStart() {
        Fiber.abort(JR.exception("AbstractMethodError", "onGameStart"))
    }
    

    onDemoGameMidletEvent(demoGameMidletEvent) {
        Fiber.abort(JR.exception("AbstractMethodError", "onDemoGameMidletEvent"))
    }
}

import "./DemoGameMidletEvent" for DemoGameMidletEvent

