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
// package org.allbinary.business.advertisement

import "../../../../allbinary_java" for JObject, JException, JR

class AdConfiguration is JObject {
  INNERACTIVE { _INNERACTIVE }
  INNERACTIVE=(value) { _INNERACTIVE = value }
  LEADBOLT { _LEADBOLT }
  LEADBOLT=(value) { _LEADBOLT = value }
  ADMOB { _ADMOB }
  ADMOB=(value) { _ADMOB = value }

  initFields_AdConfiguration() {
    _INNERACTIVE = null
    _LEADBOLT = null
    _ADMOB = null
        
        
        
  }
    

    construct new(advertIdArray) {
    super()
    initFields_AdConfiguration()
        _INNERACTIVE = advertIdArray[0]
        _ADMOB = advertIdArray[1]
        _LEADBOLT = advertIdArray[2]
    }
    

    getValidAdSpots() {
        return List.filled(0, null)
    }
    

    process(gameState) {
    }
    

    processDemo(state) {
    }
    

    setShowAds() {
    }
    

    setToggleAds(showAds) {
    }
    

    isShowAds() {
        return true
    }
}

import "../../../../org/allbinary/direction/Direction" for Direction
import "../../../../org/allbinary/game/state/GameState" for GameState

