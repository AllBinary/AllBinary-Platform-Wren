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
// package org.allbinary

import "../../allbinary_java" for JObject, JException, JR

class PostGameCommandFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PostGameCommandFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PostGameCommandFactory() {
  }

  construct new() {
    super()
    initFields_PostGameCommandFactory()
  }
    

    static getInstance() {
        return PostGameCommandFactory.instance
    }
    

    addCommands(canvas) {
        MultiPlayerGameFeatureFactory.getInstance().addCommands(canvas)
    }
}

import "../../org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory" for MultiPlayerGameFeatureFactory
import "../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas

