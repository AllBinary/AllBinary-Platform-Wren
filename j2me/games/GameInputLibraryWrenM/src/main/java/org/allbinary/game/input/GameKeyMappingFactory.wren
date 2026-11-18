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

class GameKeyMappingFactory is JObject {
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
  intKeyToGameKey { _intKeyToGameKey }
  intKeyToGameKey=(value) { _intKeyToGameKey = value }

  initFields_GameKeyMappingFactory() {
    _intKeyToGameKey = null
        _intKeyToGameKey = List.filled(InputFactory.getInstance().MAX, null)
  }
    

    static getInstance() {
        if ((GameKeyMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GameKeyMappingFactory.instance = GameKeyMappingFactory.new()
        }
        return GameKeyMappingFactory.instance
    }
    

    construct new() {
    super()
    initFields_GameKeyMappingFactory()
        var gameKeyFactory = GameKeyFactory.getInstance()
        this.setGameKey(gameKeyFactory.NONE)
        this.setGameKey(gameKeyFactory.UP)
        this.setGameKey(gameKeyFactory.DOWN)
        this.setGameKey(gameKeyFactory.LEFT)
        this.setGameKey(gameKeyFactory.RIGHT)
        this.setGameKey(gameKeyFactory.KEY_POUND)
        this.setGameKey(gameKeyFactory.KEY_STAR)
        this.setGameKey(gameKeyFactory.KEY_NUM0)
        this.setGameKey(gameKeyFactory.KEY_NUM1)
        this.setGameKey(gameKeyFactory.KEY_NUM2)
        this.setGameKey(gameKeyFactory.KEY_NUM3)
        this.setGameKey(gameKeyFactory.KEY_NUM4)
        this.setGameKey(gameKeyFactory.KEY_NUM5)
        this.setGameKey(gameKeyFactory.KEY_NUM6)
        this.setGameKey(gameKeyFactory.KEY_NUM7)
        this.setGameKey(gameKeyFactory.KEY_NUM8)
        this.setGameKey(gameKeyFactory.KEY_NUM9)
        this.setGameKey(gameKeyFactory.GAME_A)
        this.setGameKey(gameKeyFactory.GAME_B)
        this.setGameKey(gameKeyFactory.GAME_C)
        this.setGameKey(gameKeyFactory.GAME_D)
        this.setGameKey(gameKeyFactory.FIRE)
        this.setGameKey(gameKeyFactory.LEVEL_DOWN)
        this.setGameKey(gameKeyFactory.LEVEL_UP)
    }
    

    getGameKey(key) {
        return _intKeyToGameKey[key]
    }
    

    setGameKey(gameKey) {
        _intKeyToGameKey[gameKey.getId()] = gameKey
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./GameKey" for GameKey
import "./InputFactory" for InputFactory
import "./GameKeyFactory" for GameKeyFactory

