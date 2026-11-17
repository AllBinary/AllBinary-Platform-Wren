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
// package org.allbinary.logic.communication.http

import "../../../../../allbinary_java" for JObject, JException, JR

class HttpData is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = HttpData.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EQUALS { _EQUALS }
  EQUALS=(value) { _EQUALS = value }
  PARAM_SEP { _PARAM_SEP }
  PARAM_SEP=(value) { _PARAM_SEP = value }
  URL_PARAM_SEP { _URL_PARAM_SEP }
  URL_PARAM_SEP=(value) { _URL_PARAM_SEP = value }
  URL_LABEL { _URL_LABEL }
  URL_LABEL=(value) { _URL_LABEL = value }

  initFields_HttpData() {
    _EQUALS = null
    _PARAM_SEP = null
    _URL_PARAM_SEP = null
    _URL_LABEL = null
        
        
        
        _URL_LABEL = "Url: "
  }
    

    static getInstance() {
        return HttpData.instance
    }
    

    construct new() {
    super()
    initFields_HttpData()
        var commonSeps = CommonSeps.getInstance()
        _EQUALS = commonSeps.EQUALS
        _PARAM_SEP = commonSeps.AMPERSAND
        _URL_PARAM_SEP = commonSeps.QUESTION
    }
}

import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps

