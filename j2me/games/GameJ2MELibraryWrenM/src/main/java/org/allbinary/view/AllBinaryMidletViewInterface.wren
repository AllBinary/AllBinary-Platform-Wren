// Generated Code Do Not Modify
// package org.allbinary.view

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/midlet/MidletCompositeInterface" for MidletCompositeInterface

class AllBinaryMidletViewInterface is JObject {
    

    onResume() {
        Fiber.abort(JR.exception("AbstractMethodError", "onResume"))
    }
    

    onPause() {
        Fiber.abort(JR.exception("AbstractMethodError", "onPause"))
    }
    

    onDestroy() {
        Fiber.abort(JR.exception("AbstractMethodError", "onDestroy"))
    }
}

import "../../../org/allbinary/game/configuration/event/GameInitializedListenerInterface" for GameInitializedListenerInterface
import "../../../org/allbinary/game/midlet/DemoGameMidletEventListener" for DemoGameMidletEventListener
import "./EmulatorViewInterface" for EmulatorViewInterface

