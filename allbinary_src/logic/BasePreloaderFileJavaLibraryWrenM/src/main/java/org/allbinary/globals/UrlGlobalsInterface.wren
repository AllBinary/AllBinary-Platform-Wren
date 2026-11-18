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

class UrlGlobalsInterface is JObject {

  initFields_UrlGlobalsInterface() {
  }

  construct new() {
    super()
    initFields_UrlGlobalsInterface()
  }
    

    getMainPath() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    getTestHtmlPath() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    getWebappPath() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    isTestingMode() {
        return false
    }
}

import "../../../org/allbinary/logic/string/StringUtil" for StringUtil

