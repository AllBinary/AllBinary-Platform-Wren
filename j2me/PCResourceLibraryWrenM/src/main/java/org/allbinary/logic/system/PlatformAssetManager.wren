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
// package org.allbinary.logic.system

import "../../../../allbinary_java" for JObject, JException, JR

class PlatformAssetManager is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PlatformAssetManager.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PlatformAssetManager() {
  }

  construct new() {
    super()
    initFields_PlatformAssetManager()
  }
    

    static getInstance() {
        return PlatformAssetManager.instance
    }
    

    getResourceAsStream(resource) {
        var resourceUtil = ResourceUtil.getInstance()
        var inputStream = resourceUtil.getResourceAsStream(resource)
        return inputStream
    }
}

import "../../../../java/io/InputStream" for InputStream
import "../../../../org/allbinary/data/resource/ResourceUtil" for ResourceUtil

