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
// package org.allbinary.logic.control.validate

import "../../../../../allbinary_java" for JObject, JException, JR

class ValidatorBase is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ValidatorBase.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ValidatorBase() {
  }
    

    static getInstance() {
        return ValidatorBase.instance
    }
    

    construct new() {
    super()
    initFields_ValidatorBase()
    }
    

    isValid() {
        return BooleanFactory.getInstance().TRUE
    }
    

    validationInfo() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    toHashtable() {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    toList() {
        return BasicArrayListUtil.getInstance().getImmutableInstance()
    }
}

import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../java/lang/Boolean" for Boolean
import "./ValidatorBaseInterface" for ValidatorBaseInterface

