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
// package org.allbinary.game.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class GameLevelDisplayChangeEventListenersFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameLevelDisplayChangeEventListenersFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_GameLevelDisplayChangeEventListenersFactory() {
    _list = null
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_GameLevelDisplayChangeEventListenersFactory()
  }
    

    static getInstance() {
        return GameLevelDisplayChangeEventListenersFactory.instance
    }
    

    add(displayChangeEventListener) {
        _list.add(displayChangeEventListener)
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener)
    }
    

    clear() {
        var displayChangeEventHandler = DisplayChangeEventHandler.getInstance()
        var displayChangeEventListener = null
        if (true) {
            var index = _list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            displayChangeEventListener = _list.objectArray[index]
            displayChangeEventHandler.removeListener(displayChangeEventListener)
            }
        }
        _list.clear()
    }
}

import "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" for DisplayChangeEventHandler
import "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener" for DisplayChangeEventListener
import "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" for BasicEventHandler
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

