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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/init/Init" for Init

class KeyFactoryInitializer is Init {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_KeyFactoryInitializer() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_KeyFactoryInitializer()
  }
    

    init() {
        _logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x2D0, 6)
    }
}

import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory

