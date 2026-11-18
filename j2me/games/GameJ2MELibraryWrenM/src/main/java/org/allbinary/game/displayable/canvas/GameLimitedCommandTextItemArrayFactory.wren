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

class GameLimitedCommandTextItemArrayFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameLimitedCommandTextItemArrayFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commandTextItemArrayFactory { _commandTextItemArrayFactory }
  commandTextItemArrayFactory=(value) { _commandTextItemArrayFactory = value }

  initFields_GameLimitedCommandTextItemArrayFactory() {
    _commandTextItemArrayFactory = null
        _commandTextItemArrayFactory = CommandTextItemArrayFactory.new(LimitCommandsVisitor.new())
  }

  construct new() {
    super()
    initFields_GameLimitedCommandTextItemArrayFactory()
  }
    

    static getInstance() {
        return GameLimitedCommandTextItemArrayFactory.instance
    }
    

    getCommandTextItemArrayFactory() {
        return _commandTextItemArrayFactory
    }
}

import "../../../../../org/allbinary/graphics/form/item/CommandTextItemArrayFactory" for CommandTextItemArrayFactory
import "../../../../../org/allbinary/graphics/form/item/LimitCommandsVisitor" for LimitCommandsVisitor

