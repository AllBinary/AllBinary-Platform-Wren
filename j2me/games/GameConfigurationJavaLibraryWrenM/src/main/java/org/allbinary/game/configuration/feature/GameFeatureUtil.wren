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

class GameFeatureUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameFeatureUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  enumerationUtil { _enumerationUtil }
  enumerationUtil=(value) { _enumerationUtil = value }
  ON_GAME_FEATURE_CHANGE { _ON_GAME_FEATURE_CHANGE }
  ON_GAME_FEATURE_CHANGE=(value) { _ON_GAME_FEATURE_CHANGE = value }
  GAME_FEATURE_CHANGED { _GAME_FEATURE_CHANGED }
  GAME_FEATURE_CHANGED=(value) { _GAME_FEATURE_CHANGED = value }

  initFields_GameFeatureUtil() {
    _logUtil = null
    _tsUtil = null
    _enumerationUtil = null
    _ON_GAME_FEATURE_CHANGE = null
    _GAME_FEATURE_CHANGED = null
        _logUtil = LogUtil.getInstance()
        _tsUtil = TsUtil.getInstance()
        _enumerationUtil = EnumerationUtil.getInstance()
        _ON_GAME_FEATURE_CHANGE = "onGameFeatureChange"
        _GAME_FEATURE_CHANGED = "Game Feature Changed: "
  }

  construct new() {
    super()
    initFields_GameFeatureUtil()
  }
    

    static getInstance() {
        return GameFeatureUtil.instance
    }
    

    setDefault(choiceGroup) {
        var stringBuffer = StringMaker.new()
        var METHOD_NAME = "setDefault"
        var SELECTED_ARRAY_RETURN = "selectedArray_return["
        var SELECTED_SEP = "] = "
        var selectedArray_return = List.filled(choiceGroup.size(), false)
        var total = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        _logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
        var features = Features.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < selectedArray_return.count))) break
            var isSelected = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            _logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            var selectedChoiceLabel = choiceGroup.getString(index)
            var gameFeature = Feature.getInstance(selectedChoiceLabel)
            if (features.isDefault(gameFeature)) {
                features.add(gameFeature)
                choiceGroup.setSelectedIndex(index, true)
            } else {
                features.remove(gameFeature)
                choiceGroup.setSelectedIndex(index, false)
            }
            }
        }
    }
    

    updateMultiple(choiceGroup) {
        var stringBuffer = StringMaker.new()
        var METHOD_NAME = "updateMultiple"
        var SELECTED_ARRAY_RETURN = "selectedArray_return["
        var SELECTED_SEP = "] = "
        var selectedArray_return = List.filled(choiceGroup.size(), false)
        var total = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        _logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
        var features = Features.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < selectedArray_return.count))) break
            var isSelected = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            _logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            var selectedChoiceLabel = choiceGroup.getString(index)
            var gameFeature = Feature.getInstance(selectedChoiceLabel)
            if ((!isSelected && features.isFeature(gameFeature))) {
                features.remove(gameFeature)
            } else if ((isSelected && !features.isFeature(gameFeature))) {
                features.add(gameFeature)
            }
            }
        }
    }
    

    updateExclusiveForChoiceGroup(choiceGroup) {
        var stringBuffer = StringMaker.new()
        var METHOD_NAME = "updateExclusive"
        var SELECTED_ARRAY_RETURN = "selectedArray_return["
        var SELECTED_SEP = "] = "
        var selectedArray_return = List.filled(choiceGroup.size(), false)
        var total = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Exclusive Total Choices: 1==")
        stringBuffer.appendint(total)
        _logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < selectedArray_return.count))) break
            var isSelected = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            _logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            if (isSelected) {
                var selectedChoiceLabel = choiceGroup.getString(index)
                this.updateExclusive(selectedChoiceLabel)
            }
            }
        }
    }
    

    isExclusive(itemLabel) {
        var enumeration = GameFeatureChoiceGroups.getExclusiveInstance().get().keys()
        var name = null
        while (_enumerationUtil.hasMoreElements(enumeration)) {
            name = _enumerationUtil.nextElement(enumeration)
            if ((_tsUtil.compareTo(itemLabel, name) == 0)) {
                return true
            }
        }
        return false
    }
    

    updateExclusive(selectedChoiceLabel) {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), this, "updateExclusive")
        var gameFeature = Feature.getInstance(selectedChoiceLabel)
        var hashtable = GameFeatureChoiceGroups.getExclusiveInstance().get()
        var objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var basicArrayList = null
        var anyType = null
        var size = objectArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            anyType = objectArray[index]
            basicArrayList = hashtable.get(anyType)
            this.updateExclusiveList(gameFeature, basicArrayList)
            }
        }
    }
    

    updateExclusiveList(gameFeature, list) {
        if (list.contains(gameFeature)) {
            var features = Features.getInstance()
            var addIndex = list.indexOf(gameFeature)
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
                if ((addIndex != index)) {
                    features.remove(list.objectArray[index])
                } else {
                    features.add(list.objectArray[index])
                }
                }
            }
        }
    }
}

import "../../../../../java/util/Enumeration" for Enumeration
import "../../../../../javax/microedition/lcdui/ChoiceGroup" for ChoiceGroup
import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/EnumerationUtil" for EnumerationUtil
import "../../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "./Features" for Features
import "./Feature" for Feature
import "./GameFeatureChoiceGroups" for GameFeatureChoiceGroups

