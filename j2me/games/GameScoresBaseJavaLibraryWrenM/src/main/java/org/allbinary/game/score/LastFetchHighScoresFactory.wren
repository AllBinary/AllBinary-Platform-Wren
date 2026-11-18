/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class LastFetchHighScoresFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  highScoresArray { _highScoresArray }
  highScoresArray=(value) { _highScoresArray = value }

  initFields_LastFetchHighScoresFactory() {
    _highScoresArray = null
        _highScoresArray = NoHighScoresFactory.getInstance().NO_HIGH_SCORES
  }

  construct new() {
    super()
    initFields_LastFetchHighScoresFactory()
  }
    

    static getInstance() {
        if ((LastFetchHighScoresFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            LastFetchHighScoresFactory.instance = LastFetchHighScoresFactory.new()
        }
        return LastFetchHighScoresFactory.instance
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./NoHighScoresFactory" for NoHighScoresFactory
import "./HighScores" for HighScores

