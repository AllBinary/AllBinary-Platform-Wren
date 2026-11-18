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
// package org.allbinary.game.multiplayer.layer

import "../../../../../allbinary_java" for JObject, JException, JR

class MultiplayerBehavior is JObject {
    static NULL_MULTIPLAYER_BEHAVIOR {
    if (__NULL_MULTIPLAYER_BEHAVIOR_set == null) {
      __NULL_MULTIPLAYER_BEHAVIOR_set = true
      __NULL_MULTIPLAYER_BEHAVIOR = MultiplayerBehavior.new(StringUtil.getInstance().EMPTY_STRING)
    }
    return __NULL_MULTIPLAYER_BEHAVIOR
  }
  static NULL_MULTIPLAYER_BEHAVIOR=(value) {
    __NULL_MULTIPLAYER_BEHAVIOR_set = true
    __NULL_MULTIPLAYER_BEHAVIOR = value
  }

  initFields_MultiplayerBehavior() {
  }
    

    construct new(username) {
    super()
    initFields_MultiplayerBehavior()
    }
    

    startTick() {
    }
    

    endTick() {
    }
    

    getApproximateElapsed() {
        return 0
    }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

