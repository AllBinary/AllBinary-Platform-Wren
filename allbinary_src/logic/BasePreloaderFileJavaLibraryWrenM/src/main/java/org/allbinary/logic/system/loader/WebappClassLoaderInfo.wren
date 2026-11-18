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
// package org.allbinary.logic.system.loader

import "../../../../../allbinary_java" for JObject, JException, JR

class WebappClassLoaderInfo is JObject {
    static classLoader {
    if (__classLoader_set == null) {
      __classLoader_set = true
      __classLoader = NullUtil.getInstance().NULL_OBJECT
    }
    return __classLoader
  }
  static classLoader=(value) {
    __classLoader_set = true
    __classLoader = value
  }

  initFields_WebappClassLoaderInfo() {
  }
    

    construct new() {
    super()
    initFields_WebappClassLoaderInfo()
    }
    

    static setLoader(classLoader) {
        WebappClassLoaderInfo.classLoader = classLoader
    }
    

    static getLoader() {
        return WebappClassLoaderInfo.classLoader
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil

