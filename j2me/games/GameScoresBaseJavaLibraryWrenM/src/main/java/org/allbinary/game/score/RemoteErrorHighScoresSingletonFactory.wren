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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class RemoteErrorHighScoresSingletonFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = HighScores.new(CommonStrings.getInstance().LOADING, "Remote High Scores Did Not Load", CommonStrings.getInstance().PERIODS)
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_RemoteErrorHighScoresSingletonFactory() {
  }

  construct new() {
    super()
    initFields_RemoteErrorHighScoresSingletonFactory()
  }
    

    static getInstance() {
        return RemoteErrorHighScoresSingletonFactory.SINGLETON
    }
}

import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./HighScores" for HighScores

