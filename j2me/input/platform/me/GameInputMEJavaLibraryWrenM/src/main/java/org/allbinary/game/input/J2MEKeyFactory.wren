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

class J2MEKeyFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = J2MEKeyFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  gameKeyFactory { _gameKeyFactory }
  gameKeyFactory=(value) { _gameKeyFactory = value }

  initFields_J2MEKeyFactory() {
    _gameKeyFactory = null
        _gameKeyFactory = GameKeyFactory.getInstance()
  }
    

    static getInstance() {
        return J2MEKeyFactory.instance
    }
    

    construct new() {
    super()
    initFields_J2MEKeyFactory()
    }
    

    init() {
        var gameKeyArray = [_gameKeyFactory.DOWN, _gameKeyFactory.FIRE, _gameKeyFactory.GAME_A, _gameKeyFactory.GAME_B, _gameKeyFactory.GAME_C, _gameKeyFactory.GAME_D, _gameKeyFactory.KEY_NUM0, _gameKeyFactory.KEY_NUM1, _gameKeyFactory.KEY_NUM2, _gameKeyFactory.KEY_NUM3, _gameKeyFactory.KEY_NUM4, _gameKeyFactory.KEY_NUM5, _gameKeyFactory.KEY_NUM6, _gameKeyFactory.KEY_NUM7, _gameKeyFactory.KEY_NUM8, _gameKeyFactory.KEY_NUM9, _gameKeyFactory.KEY_POUND, _gameKeyFactory.KEY_STAR, _gameKeyFactory.LEFT, _gameKeyFactory.LEVEL_DOWN, _gameKeyFactory.LEVEL_UP, _gameKeyFactory.NONE, _gameKeyFactory.RIGHT, _gameKeyFactory.UP]
        var inputFactory = InputFactory.getInstance()
        if (true) {
            var index = gameKeyArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            inputFactory.add(gameKeyArray[index].getId(), gameKeyArray[index])
            }
        }
    }
    

    isSubmission(input) {
        if ((input == _gameKeyFactory.FIRE)) {
            return true
        }
        return false
    }
    

    isDelete(input) {
        if ((input == _gameKeyFactory.GAME_D)) {
            return true
        }
        return false
    }
    

    isBackSpace(input) {
        return false
    }
    

    isUp(input) {
        if ((input == _gameKeyFactory.UP)) {
            return true
        }
        return false
    }
    

    isDown(input) {
        if ((input == _gameKeyFactory.DOWN)) {
            return true
        }
        return false
    }
    

    isLeft(input) {
        if ((input == _gameKeyFactory.LEFT)) {
            return true
        }
        return false
    }
    

    isRight(input) {
        if ((input == _gameKeyFactory.RIGHT)) {
            return true
        }
        return false
    }
    

    isEnter(input) {
        if ((input == _gameKeyFactory.FIRE)) {
            return true
        }
        return false
    }
}

import "./GameKeyFactory" for GameKeyFactory
import "./GameKey" for GameKey
import "./InputFactory" for InputFactory
import "./Input" for Input

