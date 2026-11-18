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
// package org.allbinary

import "../../allbinary_java" for JObject, JException, JR

//import org.allbinary.logic.communication.log.PreLogUtil;
class AppletUtil is JObject {
    static applet {
    if (__applet_set == null) {
      __applet_set = true
      __applet = false
    }
    return __applet
  }
  static applet=(value) {
    __applet_set = true
    __applet = value
  }

  initFields_AppletUtil() {
  }
    

    construct new() {
    super()
    initFields_AppletUtil()
    }
    

    static setApplet() {
        AppletUtil.applet = true
    }
    

    static isAppletLoader(anyType) {
        return AppletUtil.applet
    }
}


