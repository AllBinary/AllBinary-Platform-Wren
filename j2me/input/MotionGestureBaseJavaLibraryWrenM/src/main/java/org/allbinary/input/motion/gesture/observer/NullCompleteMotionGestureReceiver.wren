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
// package org.allbinary.input.motion.gesture.observer

import "../../../../../../allbinary_java" for JObject, JException, JR

class NullCompleteMotionGestureReceiver is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_NullCompleteMotionGestureReceiver() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_NullCompleteMotionGestureReceiver()
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF("Null Gesture Reciever", this, commonStrings.CONSTRUCTOR)
    }
    

    onMotionGestureCompleted(list) {
    }
}

import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./CompleteMotionGestureListenerInterface" for CompleteMotionGestureListenerInterface

