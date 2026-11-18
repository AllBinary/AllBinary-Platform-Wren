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

class BaseTouchInput is JObject {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  basicArrayListUtil { _basicArrayListUtil }
  basicArrayListUtil=(value) { _basicArrayListUtil = value }

  initFields_BaseTouchInput() {
    _commonStrings = null
    _basicArrayListUtil = null
        _commonStrings = CommonStrings.getInstance()
        _basicArrayListUtil = BasicArrayListUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_BaseTouchInput()
    }
    

    getList() {
        return _basicArrayListUtil.getImmutableInstance()
    }
    

    toString() {
        return JR.className(this)
    }
}

import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

