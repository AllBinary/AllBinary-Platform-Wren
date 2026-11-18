// Generated Code Do Not Modify
// package org.allbinary.view

import "../../../allbinary_java" for JObject, JException, JR

class EmulatorViewInterface is JObject {
    

    setMidlet(midlet) {
        Fiber.abort(JR.exception("AbstractMethodError", "setMidlet"))
    }
    

    onEmulatorInitComplete(midletActivity) {
        Fiber.abort(JR.exception("AbstractMethodError", "onEmulatorInitComplete"))
    }
    

    onSetDisplayable(displayable) {
        Fiber.abort(JR.exception("AbstractMethodError", "onSetDisplayable"))
    }
}

import "../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../javax/microedition/midlet/MIDlet" for MIDlet

