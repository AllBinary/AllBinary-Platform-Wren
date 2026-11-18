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
// package javax.microedition.lcdui

import "../../../allbinary_java" for JObject, JException, JR
import "./PlatformImage" for PlatformImage

//PlatformNullImageJavaLibrary
class PreLoadPlatformImage is PlatformImage {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PreLoadPlatformImage.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PreLoadPlatformImage() {
  }

  construct new() {
    super()
    initFields_PreLoadPlatformImage()
  }
    

    static getInstance() {
        return PreLoadPlatformImage.instance
    }
}


