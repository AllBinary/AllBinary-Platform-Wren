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

class SWTUtil is JObject {
    static isSWT {
    if (__isSWT_set == null) {
      __isSWT_set = true
      __isSWT = true
    }
    return __isSWT
  }
  static isSWT=(value) {
    __isSWT_set = true
    __isSWT = value
  }
    static SWT {
    if (__SWT_set == null) {
      __SWT_set = true
      __SWT = "SWT"
    }
    return __SWT
  }
  static SWT=(value) {
    __SWT_set = true
    __SWT = value
  }

  initFields_SWTUtil() {
  }

  construct new() {
    super()
    initFields_SWTUtil()
  }
}


