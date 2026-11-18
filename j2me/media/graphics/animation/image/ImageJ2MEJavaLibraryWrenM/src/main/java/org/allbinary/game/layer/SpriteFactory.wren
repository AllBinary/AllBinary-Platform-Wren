/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class SpriteFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SpriteFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_SpriteFactory() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_SpriteFactory()
  }
    

    static getInstance() {
        return SpriteFactory.instance
    }
    

    createSprite(image, frameWidth, frameHeight) {
        return Sprite.new(image, frameWidth, frameHeight)
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "./SpriteFactoryInterface" for SpriteFactoryInterface

