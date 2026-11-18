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

class BaseChangedGameFeatureListener is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameFeatureUtil { _gameFeatureUtil }
  gameFeatureUtil=(value) { _gameFeatureUtil = value }
  list { _list }
  list=(value) { _list = value }
  changed { _changed }
  changed=(value) { _changed = value }

  initFields_BaseChangedGameFeatureListener() {
    _logUtil = null
    _gameFeatureUtil = null
    _list = null
    _changed = false
        _logUtil = LogUtil.getInstance()
        _gameFeatureUtil = GameFeatureUtil.getInstance()
        _list = BasicArrayListD.new()
        _changed = true
  }

  construct new() {
    super()
    initFields_BaseChangedGameFeatureListener()
  }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(CommonStrings.getInstance().NOT_IMPLEMENTED, this)
    }
    

    onGameFeatureChange(gameFeatureEvent) {
        _logUtil.putF(StringMaker.new().append(_gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).toString(), this, _gameFeatureUtil.ON_GAME_FEATURE_CHANGE)
        _list.add(gameFeatureEvent.getGameOption())
        this.setChanged(true)
    }
    

    add(gameFeature) {
        _list.add(gameFeature)
    }
    

    remove(gameFeature) {
        _list.remove(gameFeature)
    }
    

    setChanged(initialized) {
        _changed = initialized
        if (!this.isChanged()) {
            _list.clear()
        }
    }
    

    isChangedFeature(gameFeature) {
        var isChanged = _list.contains(gameFeature)
        var stringBuffer = StringMaker.new()
        stringBuffer.append("GameFeature: ")
        stringBuffer.append(StringUtil.getInstance().toString(gameFeature))
        stringBuffer.append(" isFeature: ")
        stringBuffer.appendboolean(Features.getInstance().isFeature(gameFeature))
        stringBuffer.append(" isChanged: ")
        stringBuffer.appendboolean(isChanged)
        _logUtil.putF(stringBuffer.toString(), this, "isChanged")
        return isChanged
    }
    

    isChanged() {
        return _changed
    }
}

import "../../../../../org/allbinary/game/configuration/feature/Feature" for Feature
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/GameFeatureUtil" for GameFeatureUtil
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameFeatureListenerInterface" for GameFeatureListenerInterface
import "./GameFeatureEvent" for GameFeatureEvent

