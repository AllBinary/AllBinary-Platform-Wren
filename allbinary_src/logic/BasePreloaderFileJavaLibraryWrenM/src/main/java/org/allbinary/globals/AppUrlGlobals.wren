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
import "./UrlGlobalsInterface" for UrlGlobalsInterface

//implements
class AppUrlGlobals is UrlGlobalsInterface {
    static NULL_APP_URL_GLOBALS {
    if (__NULL_APP_URL_GLOBALS_set == null) {
      __NULL_APP_URL_GLOBALS_set = true
      __NULL_APP_URL_GLOBALS = AppUrlGlobals.new()
    }
    return __NULL_APP_URL_GLOBALS
  }
  static NULL_APP_URL_GLOBALS=(value) {
    __NULL_APP_URL_GLOBALS_set = true
    __NULL_APP_URL_GLOBALS = value
  }
  path { _path }
  path=(value) { _path = value }

  initFields_AppUrlGlobals() {
    _path = null
        _path = StringUtil.getInstance().EMPTY_STRING
  }

  construct new() {
    super()
    initFields_AppUrlGlobals()
  }
    

    isTestingMode() {
        return false
    }
    

    getWebappPath() {
        return _path
    }
    

    setWebappPath(path) {
        _path = path
        if (!((_path.endsWith("\\") || _path.endsWith("/")))) {
            _path = _path + "\\"
        }
    }
    

    getTestHtmlPath() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    getMainPath() {
        return _path
    }
}

import "../../../org/allbinary/logic/string/StringUtil" for StringUtil

