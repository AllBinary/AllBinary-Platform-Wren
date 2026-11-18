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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class PlatformInputMappingFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PlatformInputMappingFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }

  initFields_PlatformInputMappingFactory() {
    _logUtil = null
    _inputToGameKeyMapping = null
        _logUtil = LogUtil.getInstance()
        _inputToGameKeyMapping = PersistentInputMapping.getNullInstance()
  }

  construct new() {
    super()
    initFields_PlatformInputMappingFactory()
  }
    

    static getInstance() {
        return PlatformInputMappingFactory.instance
    }
    

    getPersistentInputMappingInstance() {
        var jerror0 = Fiber.new {
            if ((_inputToGameKeyMapping == PersistentInputMapping.getNullInstance())) {
                _inputToGameKeyMapping = NormalJ2MEGameInputMapping.new()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        }
        return _inputToGameKeyMapping
    }
}

import "../../../../org/allbinary/game/input/mapping/PersistentInputMapping" for PersistentInputMapping
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./NormalJ2MEGameInputMapping" for NormalJ2MEGameInputMapping

