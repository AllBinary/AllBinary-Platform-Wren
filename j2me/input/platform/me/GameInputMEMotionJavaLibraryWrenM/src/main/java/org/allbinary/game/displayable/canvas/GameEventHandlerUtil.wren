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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class GameEventHandlerUtil is JObject {

  initFields_GameEventHandlerUtil() {
  }

  construct new() {
    super()
    initFields_GameEventHandlerUtil()
  }
    

    static removeAllListeners() {
        UpGameKeyEventHandler.getInstance().removeAllListeners()
        DownGameKeyEventHandler.getInstance().removeAllListeners()
    }
}

import "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" for DownGameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler

