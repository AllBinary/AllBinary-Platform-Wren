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
// package org.allbinary.globals

import "../../../allbinary_java" for JObject, JException, JR

class URLGLOBALS is JObject {
    static urlGlobalsInterface {
    if (__urlGlobalsInterface_set == null) {
      __urlGlobalsInterface_set = true
      __urlGlobalsInterface = AppUrlGlobals.NULL_APP_URL_GLOBALS
    }
    return __urlGlobalsInterface
  }
  static urlGlobalsInterface=(value) {
    __urlGlobalsInterface_set = true
    __urlGlobalsInterface = value
  }

  initFields_URLGLOBALS() {
  }

  construct new() {
    super()
    initFields_URLGLOBALS()
  }
    

    static init(urlGlobalsInterface) {
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface
    }
    

    static isTestingMode() {
        return URLGLOBALS.urlGlobalsInterface.isTestingMode()
    }
    

    static getWebappPath() {
        return URLGLOBALS.urlGlobalsInterface.getWebappPath()
    }
    

    static getTestHtmlPath() {
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath()
    }
    

    static getMainPath() {
        return URLGLOBALS.urlGlobalsInterface.getMainPath()
    }
}

import "./AppUrlGlobals" for AppUrlGlobals
import "./UrlGlobalsInterface" for UrlGlobalsInterface

