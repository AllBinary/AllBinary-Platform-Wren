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

class DisposalUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DisposalUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_DisposalUtil() {
  }

  construct new() {
    super()
    initFields_DisposalUtil()
  }
    

    static getInstance() {
        return DisposalUtil.instance
    }
    

    disposeImage(image) {
    }
    

    disposeResource(resource) {
        if (!resource.isDisposed()) {
            resource.dispose()
        }
    }
}

import "../../javax/microedition/lcdui/Image" for Image
import "../../org/eclipse/swt/graphics/Resource" for Resource

