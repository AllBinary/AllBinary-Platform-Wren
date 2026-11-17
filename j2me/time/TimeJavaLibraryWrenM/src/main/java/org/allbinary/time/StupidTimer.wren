// Generated Code Do Not Modify
// package org.allbinary.time

import "../../../allbinary_java" for JObject, JException, JR

class StupidTimer is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  nullUtil { _nullUtil }
  nullUtil=(value) { _nullUtil = value }
  threadObjectUtil { _threadObjectUtil }
  threadObjectUtil=(value) { _threadObjectUtil = value }

  initFields_StupidTimer() {
    _logUtil = null
    _commonStrings = null
    _nullUtil = null
    _threadObjectUtil = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _nullUtil = NullUtil.getInstance()
        _threadObjectUtil = ThreadObjectUtil.getInstance()
  }

  construct new() {
    super()
    initFields_StupidTimer()
  }
    

    visitBool(visitorInterface) {
        var result = visitorInterface.visit(_nullUtil.NULL_OBJECT)
        var result2 = result.booleanValue()
        return result2
    }
    

    visit(visitorInterface, timeDelayHelper) {
        var tookTooLong = false
        var WAITING_FOR = "Waiting for: "
        PreLogUtil.put(StringMaker.new().append(WAITING_FOR).append(StringUtil.getInstance().toString(visitorInterface)).toString(), this, _commonStrings.VISIT)
        var index = 0
        while (this.visitBool(visitorInterface)) {
            if (((index % 10) == 0)) {
                PreLogUtil.put(StringMaker.new().append(WAITING_FOR).appendint(index).toString(), this, _commonStrings.VISIT)
            }
            index = JR.i32(index + 1)
            if (true) {
                _threadObjectUtil.waitObjectFor(this, 1800)
            }
            if (timeDelayHelper.isTimeTNT()) {
                tookTooLong = true
                break
            }
        }
        if (tookTooLong) {
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.VISIT, JR.exception("Exception", StringMaker.new().append("Took Too Long: ").append(StringUtil.getInstance().toString(visitorInterface)).toString()))
        } else {
            PreLogUtil.put(timeDelayHelper.toString(), this, _commonStrings.VISIT)
        }
    }
    

    stopWaiting() {
        if (true) {
            _threadObjectUtil.notifyObject(this)
        }
    }
}

import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/thread/ThreadObjectUtil" for ThreadObjectUtil
import "../../../java/lang/Boolean" for Boolean
import "./TimeDelayHelper" for TimeDelayHelper

