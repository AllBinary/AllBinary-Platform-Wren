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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR

class CustomGameMenuUtil is JObject {

  initFields_CustomGameMenuUtil() {
  }

  construct new() {
    super()
    initFields_CustomGameMenuUtil()
  }
    

    static add(canvas) {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        if (AppletUtil.isAppletLoader(canvas)) {
        } else if (J2MEUtil.isHTML()) {
        } else {
            canvas.addCommand(gameCommandsFactory.EXIT_COMMAND)
        }
    }
}

import "../../../org/allbinary/AppletUtil" for AppletUtil
import "../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas

