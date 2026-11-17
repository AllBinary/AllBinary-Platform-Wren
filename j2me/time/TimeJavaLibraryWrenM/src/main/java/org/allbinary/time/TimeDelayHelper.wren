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
// package org.allbinary.time

import "../../../allbinary_java" for JObject, JException, JR

class TimeDelayHelper is JObject {
  startTime { _startTime }
  startTime=(value) { _startTime = value }
  elapsedTimeAtPause { _elapsedTimeAtPause }
  elapsedTimeAtPause=(value) { _elapsedTimeAtPause = value }
  delay { _delay }
  delay=(value) { _delay = value }

  initFields_TimeDelayHelper() {
    _startTime = 0
    _elapsedTimeAtPause = 0
    _delay = 0
        _startTime = -1
        _elapsedTimeAtPause = Long.MIN_VALUE
        
  }
    

    construct new(delay) {
    super()
    initFields_TimeDelayHelper()
        _delay = delay
        this.setStartTimeTNT()
    }
    

    isTimeTNT() {
        var currentTime = JR.currentTimeMillis()
        if ((JR.i32(currentTime - _startTime) > _delay)) {
            _startTime = currentTime
            return true
        }
        return false
    }
    

    isTimeSinceTNT(delay) {
        var currentTime = JR.currentTimeMillis()
        if ((JR.i32(currentTime - _startTime) > delay)) {
            _startTime = currentTime
            return true
        }
        return false
    }
    

    isTime(currentTime) {
        if ((JR.i32(currentTime - _startTime) > _delay)) {
            _startTime = currentTime
            return true
        }
        return false
    }
    

    isTimeWithoutReset(currentTime) {
        if ((JR.i32(currentTime - _startTime) > _delay)) {
            return true
        }
        return false
    }
    

    isTimeSince(delay, currentTime) {
        if ((JR.i32(currentTime - _startTime) > _delay)) {
            _startTime = currentTime
            return true
        }
        return false
    }
    

    getElapsedTNT() {
        return (JR.currentTimeMillis() - _startTime)
    }
    

    getElapsed(currentTime) {
        return JR.i32(currentTime - _startTime)
    }
    

    isElapsed(currentTime, time) {
        if ((this.getElapsed(currentTime) > time)) {
            return true
        } else {
            return false
        }
    }
    

    isElapsedTNT(time) {
        if ((this.getElapsedTNT() > time)) {
            return true
        } else {
            return false
        }
    }
    

    setStartTime(startTime) {
        _startTime = startTime
    }
    

    getStartTime() {
        return _startTime
    }
    

    setStartTimeTNT() {
        _startTime = JR.currentTimeMillis()
    }
    

    pause() {
        _elapsedTimeAtPause = this.getElapsedTNT()
        _startTime = Long.MAX_VALUE
    }
    

    resume() {
        if ((_elapsedTimeAtPause != Long.MIN_VALUE)) {
            _startTime = (JR.currentTimeMillis() + _elapsedTimeAtPause)
            _elapsedTimeAtPause = Long.MIN_VALUE
            this.setStartTimeTNT()
            return true
        }
        return false
    }
    

    toStringAt(currentTime) {
        var elapsed = this.getElapsed(currentTime)
        if ((elapsed > 0)) {
            var commonLabels = CommonLabels.getInstance()
            var elapsedAsString = JR.str(elapsed)
            return StringMaker.new().append(commonLabels.START).appendlong(_startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
    

    toString() {
        var currentTime = JR.currentTimeMillis()
        var elapsed = this.getElapsed(currentTime)
        if ((elapsed > 0)) {
            var commonLabels = CommonLabels.getInstance()
            var elapsedAsString = JR.str(elapsed)
            return StringMaker.new().append(commonLabels.START).appendlong(_startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../java/lang/System" for JSystem
import "../../../java/lang/Long" for Long

