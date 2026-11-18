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
// package org.allbinary.game.identification

import "../../../../allbinary_java" for JObject, JException, JR

class BasicGroupFactory is JObject {
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
  NAME { _NAME }
  NAME=(value) { _NAME = value }
  NO_SUCH_GROUP { _NO_SUCH_GROUP }
  NO_SUCH_GROUP=(value) { _NO_SUCH_GROUP = value }
  GOOD { _GOOD }
  GOOD=(value) { _GOOD = value }
  ENEMY { _ENEMY }
  ENEMY=(value) { _ENEMY = value }
  ENEMY_ON_LEVEL { _ENEMY_ON_LEVEL }
  ENEMY_ON_LEVEL=(value) { _ENEMY_ON_LEVEL = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  GOOD_ARRAY { _GOOD_ARRAY }
  GOOD_ARRAY=(value) { _GOOD_ARRAY = value }
  ENEMY_ARRAY { _ENEMY_ARRAY }
  ENEMY_ARRAY=(value) { _ENEMY_ARRAY = value }
  ENEMY_ON_LEVEL_ARRAY { _ENEMY_ON_LEVEL_ARRAY }
  ENEMY_ON_LEVEL_ARRAY=(value) { _ENEMY_ON_LEVEL_ARRAY = value }
  NONE_ARRAY { _NONE_ARRAY }
  NONE_ARRAY=(value) { _NONE_ARRAY = value }

  initFields_BasicGroupFactory() {
    _NAME = null
    _NO_SUCH_GROUP = null
    _GOOD = null
    _ENEMY = null
    _ENEMY_ON_LEVEL = null
    _NONE = null
    _GOOD_ARRAY = null
    _ENEMY_ARRAY = null
    _ENEMY_ON_LEVEL_ARRAY = null
    _NONE_ARRAY = null
        _NAME = "GROUP_NAME"
        _NO_SUCH_GROUP = "No Such Group: "
        _GOOD = Group.new("Good Guys", JR.i16(0))
        _ENEMY = Group.new("Bad Guys", JR.i16(1))
        _ENEMY_ON_LEVEL = Group.new("Bad Guys on Level", JR.i16(2))
        _NONE = Group.new("Not On A Team", JR.i16(3))
        _GOOD_ARRAY = [_GOOD]
        _ENEMY_ARRAY = [_ENEMY]
        _ENEMY_ON_LEVEL_ARRAY = [_ENEMY, _ENEMY_ON_LEVEL]
        _NONE_ARRAY = [_NONE]
  }

  construct new() {
    super()
    initFields_BasicGroupFactory()
  }
    

    static getInstance() {
        if ((BasicGroupFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            BasicGroupFactory.instance = BasicGroupFactory.new()
        }
        return BasicGroupFactory.instance
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./Group" for Group

