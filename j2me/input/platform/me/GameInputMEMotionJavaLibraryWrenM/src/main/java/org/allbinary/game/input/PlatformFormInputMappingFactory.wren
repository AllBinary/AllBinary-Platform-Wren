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
                var inputToGameKeyMapping = InputToGameKeyMapping.new()
                var gameKeyFactory = GameKeyFactory.getInstance()
                inputToGameKeyMapping.add(gameKeyFactory.UP, gameKeyFactory.UP)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, gameKeyFactory.DOWN)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, gameKeyFactory.LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, gameKeyFactory.RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, gameKeyFactory.GAME_A)
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
import "./GameKeyFactory" for GameKeyFactory

