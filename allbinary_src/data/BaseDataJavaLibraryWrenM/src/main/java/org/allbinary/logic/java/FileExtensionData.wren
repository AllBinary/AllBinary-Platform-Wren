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
// package org.allbinary.logic.java

import "../../../../allbinary_java" for JObject, JException, JR

class FileExtensionData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FileExtensionData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DOT_JAVA_SOURCE { _DOT_JAVA_SOURCE }
  DOT_JAVA_SOURCE=(value) { _DOT_JAVA_SOURCE = value }
  JAVA_SOURCE { _JAVA_SOURCE }
  JAVA_SOURCE=(value) { _JAVA_SOURCE = value }

  initFields_FileExtensionData() {
    _DOT_JAVA_SOURCE = null
    _JAVA_SOURCE = null
        _DOT_JAVA_SOURCE = ".java"
        _JAVA_SOURCE = "java"
  }
    

    static getInstance() {
        return FileExtensionData.instance
    }
    

    construct new() {
    super()
    initFields_FileExtensionData()
    }
}


