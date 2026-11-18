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

class InputFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = InputFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  REMOVE_DUPLICATE_KEY_PRESSES { _REMOVE_DUPLICATE_KEY_PRESSES }
  REMOVE_DUPLICATE_KEY_PRESSES=(value) { _REMOVE_DUPLICATE_KEY_PRESSES = value }
  INPUT_MAPPING { _INPUT_MAPPING }
  INPUT_MAPPING=(value) { _INPUT_MAPPING = value }
  MULTI_KEY_PRESS { _MULTI_KEY_PRESS }
  MULTI_KEY_PRESS=(value) { _MULTI_KEY_PRESS = value }
  SINGLE_KEY_REPEAT_PRESS { _SINGLE_KEY_REPEAT_PRESS }
  SINGLE_KEY_REPEAT_PRESS=(value) { _SINGLE_KEY_REPEAT_PRESS = value }
  SINGLE_KEY_PRESS { _SINGLE_KEY_PRESS }
  SINGLE_KEY_PRESS=(value) { _SINGLE_KEY_PRESS = value }

  initFields_InputFeatureFactory() {
    _REMOVE_DUPLICATE_KEY_PRESSES = null
    _INPUT_MAPPING = null
    _MULTI_KEY_PRESS = null
    _SINGLE_KEY_REPEAT_PRESS = null
    _SINGLE_KEY_PRESS = null
        _REMOVE_DUPLICATE_KEY_PRESSES = InputFeature.new("Remove Duplicate Key Presses")
        _INPUT_MAPPING = InputFeature.new("Input Mapping")
        _MULTI_KEY_PRESS = InputFeature.new("Multi Key Press")
        _SINGLE_KEY_REPEAT_PRESS = InputFeature.new("Single Key Repeat Press")
        _SINGLE_KEY_PRESS = InputFeature.new("Single Key Press")
  }
    

    static getInstance() {
        return InputFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_InputFeatureFactory()
    }
    

    isSingleKeyProcessing() {
        var features = Features.getInstance()
        if ((features.isFeature(_SINGLE_KEY_REPEAT_PRESS) || features.isFeature(_SINGLE_KEY_PRESS))) {
            return true
        } else {
            return false
        }
    }
}

import "./InputFeature" for InputFeature
import "./Features" for Features

