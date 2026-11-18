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
        return J2MEGameKey.getString(keyCode)
    }
    

    isSubmission(input) {
        return J2MEKeyFactory.getInstance().isSubmission(input)
    }
    

    isDelete(input) {
        return J2MEKeyFactory.getInstance().isDelete(input)
    }
    

    isBackSpace(input) {
        return J2MEKeyFactory.getInstance().isBackSpace(input)
    }
    

    isLeft(input) {
        return J2MEKeyFactory.getInstance().isLeft(input)
    }
    

    isRight(input) {
        return J2MEKeyFactory.getInstance().isRight(input)
    }
    

    isUp(input) {
        return J2MEKeyFactory.getInstance().isUp(input)
    }
    

    isDown(input) {
        return J2MEKeyFactory.getInstance().isDown(input)
    }
    

    isEnter(input) {
        return J2MEKeyFactory.getInstance().isEnter(input)
    }
}

import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "./J2MEGameKey" for J2MEGameKey
import "./J2MEKeyFactory" for J2MEKeyFactory
import "./Input" for Input

