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
// package org.allbinary.midlet

import "../../../allbinary_java" for JObject, JException, JR

class ExitRunnable is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  midlet { _midlet }
  midlet=(value) { _midlet = value }
  processor { _processor }
  processor=(value) { _processor = value }
  isProgress { _isProgress }
  isProgress=(value) { _isProgress = value }

  initFields_ExitRunnable() {
    _logUtil = null
    _commonStrings = null
    _midlet = null
    _processor = null
    _isProgress = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        
  }
    

    construct new(midlet, processor, isProgress) {
    super()
    initFields_ExitRunnable()
        _midlet = midlet
        _isProgress = isProgress
        _processor = processor
    }
    

    run() {
        var jerror0 = Fiber.new {
            _logUtil.putF(_commonStrings.START_RUNNABLE, this, _commonStrings.RUN)
            _midlet.destroyAppInRunnable(false, _isProgress)
            _midlet.setDisplay(NullCanvas.NULL_CANVAS)
            _midlet.notifyDestroyed()
            _logUtil.putF(_commonStrings.END_RUNNABLE, this, _commonStrings.RUN)
            _processor.process()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.RUN, e)
            var jerror1 = Fiber.new {
                _processor.process()
            }.try()
            if (jerror1 != null) {
                var e2 = jerror1
                _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.RUN, e)
            }
        }
    }
}

import "../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../org/allbinary/canvas/Processor" for Processor
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../java/lang/Runnable" for Runnable
import "./AllBinaryMidlet" for AllBinaryMidlet

