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
// package org.allbinary.graphics.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class DisplayableInterface is JObject {
    

    addCommand(cmd) {
        Fiber.abort(JR.exception("AbstractMethodError", "addCommand"))
    }
    

    getHeight() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHeight"))
    }
    

    getWidth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getWidth"))
    }
    

    removeCommand(cmd) {
        Fiber.abort(JR.exception("AbstractMethodError", "removeCommand"))
    }
    

    setCommandListener(l) {
        Fiber.abort(JR.exception("AbstractMethodError", "setCommandListener"))
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener

