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

class PlatformFormInputMappingFactory is JObject {
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
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }

  initFields_PlatformFormInputMappingFactory() {
    _logUtil = null
    _inputToGameKeyMapping = null
        _logUtil = LogUtil.getInstance()
        _inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
  }

  construct new() {
    super()
    initFields_PlatformFormInputMappingFactory()
  }
    

    static getInstance() {
        if ((PlatformFormInputMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            PlatformFormInputMappingFactory.instance = PlatformFormInputMappingFactory.new()
        }
        return PlatformFormInputMappingFactory.instance
    }
    

    getOrCreate() {
        var jerror0 = Fiber.new {
            if ((_inputToGameKeyMapping == InputToGameKeyMapping.getNullInstance())) {
                var pcKeyFactory = PCKeyFactory.getInstance()
                var inputToGameKeyMapping = InputToGameKeyMapping.new()
                var gameKeyFactory = GameKeyFactory.getInstance()
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER)
                _inputToGameKeyMapping = inputToGameKeyMapping
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

import "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./PCKeyFactory" for PCKeyFactory
import "./GameKeyFactory" for GameKeyFactory

