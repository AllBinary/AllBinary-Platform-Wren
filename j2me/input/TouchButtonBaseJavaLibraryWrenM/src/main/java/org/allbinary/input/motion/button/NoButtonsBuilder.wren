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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR
import "./BaseTouchInput" for BaseTouchInput

class NoButtonsBuilder is BaseTouchInput {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_NoButtonsBuilder() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_NoButtonsBuilder()
  }
    

    getList() {
        var jerror0 = Fiber.new {
            _logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            var list = BasicArrayListUtil.getInstance().getImmutableInstance()
            return list
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        }
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

