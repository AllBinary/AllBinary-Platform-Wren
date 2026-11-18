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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class GameFeatureItemStateListener is JObject {
    static toggleList {
    if (__toggleList_set == null) {
      __toggleList_set = true
      __toggleList = BasicArrayListD.new()
    }
    return __toggleList
  }
  static toggleList=(value) {
    __toggleList_set = true
    __toggleList = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameOptionsForm { _gameOptionsForm }
  gameOptionsForm=(value) { _gameOptionsForm = value }

  initFields_GameFeatureItemStateListener() {
    _logUtil = null
    _gameOptionsForm = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(gameOptionsForm) {
    super()
    initFields_GameFeatureItemStateListener()
        _gameOptionsForm = gameOptionsForm
        var gameFeatureFactory = GameFeatureFactory.getInstance()
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS)
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS)
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS)
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND)
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
    }
    

    static add(gameFeature) {
        if (!GameFeatureItemStateListener.toggleList.contains(gameFeature)) {
            GameFeatureItemStateListener.toggleList.add(gameFeature)
        }
    }
    

    itemStateChanged(item) {
        var jerror0 = Fiber.new {
            var itemLabel = item.getLabel()
            _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged")
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(_gameOptionsForm, item)
            } else if ((item is ChoiceGroup)) {
                var gameFeatureUtil = GameFeatureUtil.getInstance()
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup(item)
                } else {
                    gameFeatureUtil.updateMultiple(item)
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "itemStateChanged", e)
        }
    }
}

import "../../../../../javax/microedition/lcdui/ChoiceGroup" for ChoiceGroup
import "../../../../../javax/microedition/lcdui/Item" for Item
import "../../../../../javax/microedition/lcdui/ItemStateListener" for ItemStateListener
import "../../../../../org/allbinary/game/configuration/GameConfigurationGauge" for GameConfigurationGauge
import "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" for GameConfigurationUtil
import "../../../../../org/allbinary/game/configuration/GameOptionsForm" for GameOptionsForm
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameFeatureFactory" for GameFeatureFactory
import "./GameFeature" for GameFeature
import "./GameFeatureUtil" for GameFeatureUtil

