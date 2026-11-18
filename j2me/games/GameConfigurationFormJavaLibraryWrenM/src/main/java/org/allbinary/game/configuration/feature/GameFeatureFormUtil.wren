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

class GameFeatureFormUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameFeatureFormUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  meUtil { _meUtil }
  meUtil=(value) { _meUtil = value }

  initFields_GameFeatureFormUtil() {
    _logUtil = null
    _meUtil = null
        _logUtil = LogUtil.getInstance()
        _meUtil = MIDPUtil.getInstance()
  }

  construct new() {
    super()
    initFields_GameFeatureFormUtil()
  }
    

    static getInstance() {
        return GameFeatureFormUtil.instance
    }
    

    getChoiceGroup(hashtable, name, option) {
        var stringMaker = StringMaker.new()
        var choiceGroup = ChoiceGroup.new(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        var list = hashtable.get(name)
        var features = Features.getInstance()
        var ADD_CHOICE = ": Adding Choice: "
        var GET_CHOICE_GROUP = "getChoiceGroup"
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var gameFeature = list.objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            _logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), this, GET_CHOICE_GROUP)
            choiceGroup.append(gameFeature.toString(), NullImage.NULL_IMAGE)
            if (features.isFeature(gameFeature)) {
                choiceGroup.setSelectedIndex(index, true)
            }
            }
        }
        return choiceGroup
    }
    

    addChoiceGroup(form, hashtable, option) {
        var stringMaker = StringMaker.new()
        var ADDING_CHOICE_GROUP = "Adding Choice Group: "
        var ADD_CHOICE_GROUP = "addChoiceGroup"
        var size = hashtable.size()
        var objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var name = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            name = objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            _logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), this, ADD_CHOICE_GROUP)
            _meUtil.appendItem(form, this.getChoiceGroup(hashtable, name, option))
            }
        }
    }
    

    setDefault(form) {
        var size = form.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var item = form.get(index)
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().setDefault(item)
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil.getInstance().setDefault(item)
            }
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/ChoiceGroup" for ChoiceGroup
import "../../../../../javax/microedition/lcdui/Item" for Item
import "../../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../../org/allbinary/MIDPUtil" for MIDPUtil
import "../../../../../org/allbinary/game/configuration/GameConfigurationGauge" for GameConfigurationGauge
import "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" for GameConfigurationUtil
import "../../../../../org/allbinary/graphics/displayable/screen/CommandForm" for CommandForm
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "./Features" for Features
import "./Feature" for Feature
import "./GameFeatureUtil" for GameFeatureUtil

