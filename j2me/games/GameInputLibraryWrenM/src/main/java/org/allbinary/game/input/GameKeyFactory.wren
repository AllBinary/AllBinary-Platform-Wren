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

class GameKeyFactory is JObject {
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
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  UP { _UP }
  UP=(value) { _UP = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  KEY_POUND { _KEY_POUND }
  KEY_POUND=(value) { _KEY_POUND = value }
  KEY_STAR { _KEY_STAR }
  KEY_STAR=(value) { _KEY_STAR = value }
  KEY_NUM0 { _KEY_NUM0 }
  KEY_NUM0=(value) { _KEY_NUM0 = value }
  KEY_NUM1 { _KEY_NUM1 }
  KEY_NUM1=(value) { _KEY_NUM1 = value }
  KEY_NUM2 { _KEY_NUM2 }
  KEY_NUM2=(value) { _KEY_NUM2 = value }
  KEY_NUM3 { _KEY_NUM3 }
  KEY_NUM3=(value) { _KEY_NUM3 = value }
  KEY_NUM4 { _KEY_NUM4 }
  KEY_NUM4=(value) { _KEY_NUM4 = value }
  KEY_NUM5 { _KEY_NUM5 }
  KEY_NUM5=(value) { _KEY_NUM5 = value }
  KEY_NUM6 { _KEY_NUM6 }
  KEY_NUM6=(value) { _KEY_NUM6 = value }
  KEY_NUM7 { _KEY_NUM7 }
  KEY_NUM7=(value) { _KEY_NUM7 = value }
  KEY_NUM8 { _KEY_NUM8 }
  KEY_NUM8=(value) { _KEY_NUM8 = value }
  KEY_NUM9 { _KEY_NUM9 }
  KEY_NUM9=(value) { _KEY_NUM9 = value }
  GAME_A { _GAME_A }
  GAME_A=(value) { _GAME_A = value }
  GAME_B { _GAME_B }
  GAME_B=(value) { _GAME_B = value }
  GAME_C { _GAME_C }
  GAME_C=(value) { _GAME_C = value }
  GAME_D { _GAME_D }
  GAME_D=(value) { _GAME_D = value }
  FIRE { _FIRE }
  FIRE=(value) { _FIRE = value }
  LEVEL_DOWN { _LEVEL_DOWN }
  LEVEL_DOWN=(value) { _LEVEL_DOWN = value }
  LEVEL_UP { _LEVEL_UP }
  LEVEL_UP=(value) { _LEVEL_UP = value }

  initFields_GameKeyFactory() {
    _NONE = null
    _UP = null
    _DOWN = null
    _LEFT = null
    _RIGHT = null
    _KEY_POUND = null
    _KEY_STAR = null
    _KEY_NUM0 = null
    _KEY_NUM1 = null
    _KEY_NUM2 = null
    _KEY_NUM3 = null
    _KEY_NUM4 = null
    _KEY_NUM5 = null
    _KEY_NUM6 = null
    _KEY_NUM7 = null
    _KEY_NUM8 = null
    _KEY_NUM9 = null
    _GAME_A = null
    _GAME_B = null
    _GAME_C = null
    _GAME_D = null
    _FIRE = null
    _LEVEL_DOWN = null
    _LEVEL_UP = null
        _NONE = GameKey.new((InputFactory.getInstance().MAX - 1), "None")
        _UP = GameKey.new(Canvas.UP, CommonPhoneStrings.getInstance().UP)
        _DOWN = GameKey.new(Canvas.DOWN, CommonPhoneStrings.getInstance().DOWN)
        _LEFT = GameKey.new(Canvas.LEFT, CommonPhoneStrings.getInstance().LEFT)
        _RIGHT = GameKey.new(Canvas.RIGHT, CommonPhoneStrings.getInstance().RIGHT)
        _KEY_POUND = GameKey.new(Canvas.KEY_POUND, "POUND")
        _KEY_STAR = GameKey.new(Canvas.KEY_STAR, "STAR")
        _KEY_NUM0 = GameKey.new(Canvas.KEY_NUM0, CommonPhoneStrings.getInstance().ZERO)
        _KEY_NUM1 = GameKey.new(Canvas.KEY_NUM1, CommonPhoneStrings.getInstance().ONE)
        _KEY_NUM2 = GameKey.new(Canvas.KEY_NUM2, CommonPhoneStrings.getInstance().TWO)
        _KEY_NUM3 = GameKey.new(Canvas.KEY_NUM3, CommonPhoneStrings.getInstance().THREE)
        _KEY_NUM4 = GameKey.new(Canvas.KEY_NUM4, CommonPhoneStrings.getInstance().FOUR)
        _KEY_NUM5 = GameKey.new(Canvas.KEY_NUM5, CommonPhoneStrings.getInstance().FIVE)
        _KEY_NUM6 = GameKey.new(Canvas.KEY_NUM6, CommonPhoneStrings.getInstance().SIX)
        _KEY_NUM7 = GameKey.new(Canvas.KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN)
        _KEY_NUM8 = GameKey.new(Canvas.KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT)
        _KEY_NUM9 = GameKey.new(Canvas.KEY_NUM9, CommonPhoneStrings.getInstance().NINE)
        _GAME_A = GameKey.new(Canvas.GAME_A, "Game A")
        _GAME_B = GameKey.new(Canvas.GAME_B, "Game B")
        _GAME_C = GameKey.new(Canvas.GAME_C, "Game C")
        _GAME_D = GameKey.new(Canvas.GAME_D, "Game D")
        _FIRE = GameKey.new(Canvas.FIRE, CommonPhoneStrings.getInstance().FIRE)
        _LEVEL_DOWN = GameKey.new((Canvas.KEY_NUM9 + 1), "Cheat Level Up")
        _LEVEL_UP = GameKey.new((Canvas.KEY_NUM9 + 2), "Cheat Level Down")
  }

  construct new() {
    super()
    initFields_GameKeyFactory()
  }
    

    static getInstance() {
        if ((GameKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GameKeyFactory.instance = GameKeyFactory.new()
        }
        return GameKeyFactory.instance
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/string/CommonPhoneStrings" for CommonPhoneStrings
import "./GameKey" for GameKey
import "./InputFactory" for InputFactory

