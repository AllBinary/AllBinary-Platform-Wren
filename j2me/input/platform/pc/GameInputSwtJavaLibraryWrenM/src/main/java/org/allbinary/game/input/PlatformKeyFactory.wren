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

class PlatformKeyFactory is JObject {
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

  initFields_PlatformKeyFactory() {
  }

  construct new() {
    super()
    initFields_PlatformKeyFactory()
  }
    

    static getInstance() {
        if ((PlatformKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT)) {
            PlatformKeyFactory.instance = PlatformKeyFactory.new()
        }
        return PlatformKeyFactory.instance
    }
    

    getString(keyCode) {
        return PCGameKey.getString(keyCode)
    }
    

    isSubmission(input) {
        return PCKeyFactory.getInstance().isSubmission(input)
    }
    

    isDelete(input) {
        return PCKeyFactory.getInstance().isDelete(input)
    }
    

    isBackSpace(input) {
        return PCKeyFactory.getInstance().isBackSpace(input)
    }
    

    isUp(input) {
        return PCKeyFactory.getInstance().isUp(input)
    }
    

    isDown(input) {
        return PCKeyFactory.getInstance().isDown(input)
    }
    

    isEnter(input) {
        return PCKeyFactory.getInstance().isEnter(input)
    }
    

    isLeft(input) {
        return PCKeyFactory.getInstance().isLeft(input)
    }
    

    isRight(input) {
        return PCKeyFactory.getInstance().isRight(input)
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./PCGameKey" for PCGameKey
import "./PCKeyFactory" for PCKeyFactory
import "./Input" for Input

