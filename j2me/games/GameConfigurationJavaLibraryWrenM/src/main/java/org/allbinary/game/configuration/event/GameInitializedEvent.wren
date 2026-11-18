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
// package org.allbinary.game.configuration.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class GameInitializedEvent is AllBinaryEventObject {
  resourceLoadingLevel { _resourceLoadingLevel }
  resourceLoadingLevel=(value) { _resourceLoadingLevel = value }
  level { _level }
  level=(value) { _level = value }

  initFields_GameInitializedEvent() {
    _resourceLoadingLevel = null
    _level = 0
        _resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL
        _level = 0
  }
    

    construct new(anyType) {
        super(anyType)
        initFields_GameInitializedEvent()
    }
    

    setLevel(level) {
        _level = level
        _resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL
    }
    

    getLevel() {
        return _level
    }
    

    setResourceLoadingLevel(resourceLoadingLevel) {
        _resourceLoadingLevel = resourceLoadingLevel
        _level = _resourceLoadingLevel.getLevel()
    }
    

    getResourceLoadingLevel() {
        return _resourceLoadingLevel
    }
}

import "../../../../../org/allbinary/game/resource/ResourceLoadingLevel" for ResourceLoadingLevel
import "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory

