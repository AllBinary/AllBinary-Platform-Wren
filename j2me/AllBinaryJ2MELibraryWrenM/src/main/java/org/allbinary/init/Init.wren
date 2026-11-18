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
// package org.allbinary.init

import "../../../allbinary_java" for JObject, JException, JR

class Init is JObject {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_Init() {
    _commonStrings = null
        _commonStrings = CommonStrings.getInstance()
  }

  construct new() {
    super()
    initFields_Init()
  }
    

    init() {
    }
}

import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./InitInterface" for InitInterface

