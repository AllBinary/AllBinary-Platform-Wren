/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class GroupCommonFactory is JObject {
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
  ID { _ID }
  ID=(value) { _ID = value }
  GROUP_NAME_LABEL { _GROUP_NAME_LABEL }
  GROUP_NAME_LABEL=(value) { _GROUP_NAME_LABEL = value }
  ID_LABEL { _ID_LABEL }
  ID_LABEL=(value) { _ID_LABEL = value }
  ADDING_LABEL { _ADDING_LABEL }
  ADDING_LABEL=(value) { _ADDING_LABEL = value }
  TO_LABEL { _TO_LABEL }
  TO_LABEL=(value) { _TO_LABEL = value }

  initFields_GroupCommonFactory() {
    _ID = null
    _GROUP_NAME_LABEL = null
    _ID_LABEL = null
    _ADDING_LABEL = null
    _TO_LABEL = null
        _ID = SmallIntegerSingletonFactory.getInstance().getAt(10)
        _GROUP_NAME_LABEL = "Group Name: "
        _ID_LABEL = " Id: "
        _ADDING_LABEL = "Adding: "
        _TO_LABEL = " to: "
  }

  construct new() {
    super()
    initFields_GroupCommonFactory()
  }
    

    static getInstance() {
        if ((GroupCommonFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            GroupCommonFactory.instance = GroupCommonFactory.new()
        }
        return GroupCommonFactory.instance
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../java/lang/Integer" for Integer

