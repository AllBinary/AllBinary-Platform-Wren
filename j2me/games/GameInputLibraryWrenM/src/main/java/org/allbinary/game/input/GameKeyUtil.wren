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

class GameKeyUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameKeyUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_GameKeyUtil() {
  }

  construct new() {
    super()
    initFields_GameKeyUtil()
  }
    

    isDirectionKey(key) {
        if (((((key == Canvas.UP) || (key == Canvas.DOWN)) || (key == Canvas.LEFT)) || (key == Canvas.RIGHT))) {
            return true
        } else {
            return false
        }
    }
    

    static getInstance() {
        return GameKeyUtil.instance
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas

