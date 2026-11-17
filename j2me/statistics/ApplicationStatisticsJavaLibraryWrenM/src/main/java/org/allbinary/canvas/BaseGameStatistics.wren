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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR

class BaseGameStatistics is JObject {
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  updateDelayHelper { _updateDelayHelper }
  updateDelayHelper=(value) { _updateDelayHelper = value }
  totalRefreshes { _totalRefreshes }
  totalRefreshes=(value) { _totalRefreshes = value }
  totalFrames { _totalFrames }
  totalFrames=(value) { _totalFrames = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }
  DEFAULT_SCALE_FACTOR { _DEFAULT_SCALE_FACTOR }
  DEFAULT_SCALE_FACTOR=(value) { _DEFAULT_SCALE_FACTOR = value }
  NOT { _NOT }
  NOT=(value) { _NOT = value }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }
  STRING_ARRAY { _STRING_ARRAY }
  STRING_ARRAY=(value) { _STRING_ARRAY = value }
  SPACE_CHAR { _SPACE_CHAR }
  SPACE_CHAR=(value) { _SPACE_CHAR = value }
  PLUS_CHAR { _PLUS_CHAR }
  PLUS_CHAR=(value) { _PLUS_CHAR = value }
  X_CHAR { _X_CHAR }
  X_CHAR=(value) { _X_CHAR = value }
  CHAR_ARRAY { _CHAR_ARRAY }
  CHAR_ARRAY=(value) { _CHAR_ARRAY = value }
  primitiveLongSingleton { _primitiveLongSingleton }
  primitiveLongSingleton=(value) { _primitiveLongSingleton = value }

  initFields_BaseGameStatistics() {
    _timeDelayHelper = null
    _updateDelayHelper = null
    _totalRefreshes = 0
    _totalFrames = 0
    _gameTickTimeDelayHelper = null
    _DEFAULT_SCALE_FACTOR = 0
    _NOT = null
    _EMPTY_STRING = null
    _STRING_ARRAY = null
    _SPACE_CHAR = 0
    _PLUS_CHAR = 0
    _X_CHAR = 0
    _CHAR_ARRAY = null
    _primitiveLongSingleton = null
        _timeDelayHelper = TimeDelayHelper.new(Integer.MAX_VALUE)
        _updateDelayHelper = TimeDelayHelper.new(2000)
        _totalRefreshes = 0
        _totalFrames = 0
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        _DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        _NOT = "Not enough Time to Calculate"
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        _STRING_ARRAY = [" Total Time: ", _EMPTY_STRING, " Total Frames: ", _EMPTY_STRING, " Frames/10 Sec: ", _EMPTY_STRING, " Total Paints: ", _EMPTY_STRING, " Paints/10 Sec: ", _EMPTY_STRING]
        _SPACE_CHAR = " ".bytes[0]
        _PLUS_CHAR = "+".bytes[0]
        _X_CHAR = "X".bytes[0]
        _CHAR_ARRAY = [["F".bytes[0], "r".bytes[0], "a".bytes[0], "m".bytes[0], "e".bytes[0], "s".bytes[0], "/".bytes[0], "1".bytes[0], "0".bytes[0], " ".bytes[0], "S".bytes[0], "e".bytes[0], "c".bytes[0], ":".bytes[0]], ["X".bytes[0], "X".bytes[0]], ["P".bytes[0], "a".bytes[0], "i".bytes[0], "n".bytes[0], "t".bytes[0], "s".bytes[0], "/".bytes[0], "1".bytes[0], "0".bytes[0], " ".bytes[0], "S".bytes[0], "e".bytes[0], "c".bytes[0], ":".bytes[0]], ["X".bytes[0], "X".bytes[0]]]
        _primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
  }
    

    construct new() {
    super()
    initFields_BaseGameStatistics()
    }
    

    init() {
        _timeDelayHelper.setStartTimeTNT()
        _totalRefreshes = 0
        _totalFrames = 0
    }
    

    add(string) {
    }
    

    process() {
    }
    

    nextFrame() {
        _totalFrames = JR.i32(_totalFrames + 1)
    }
    

    nextRefresh() {
        _totalRefreshes = JR.i32(_totalRefreshes + 1)
    }
    

    getRefreshRate() {
        var elapsed = _timeDelayHelper.getElapsed(_gameTickTimeDelayHelper.startTime)
        if ((elapsed > 1)) {
            var time = JR.i16((JR.idiv(_totalRefreshes, (JR.shr(elapsed, _DEFAULT_SCALE_FACTOR)))))
            return time
        } else {
            return 0
        }
    }
    

    getTimeDelayHelper() {
        return _timeDelayHelper
    }
    

    to2DCharArray() {
        var totalTime = _timeDelayHelper.getElapsed(_gameTickTimeDelayHelper.startTime)
        totalTime = (JR.shr(totalTime, _DEFAULT_SCALE_FACTOR))
        if (((totalTime > 0) && _updateDelayHelper.isTime(_gameTickTimeDelayHelper.startTime))) {
            var framesPerSec = JR.i32((JR.idiv(_totalFrames, totalTime)))
            if ((framesPerSec < 10)) {
                _CHAR_ARRAY[1][0] = _SPACE_CHAR
                _CHAR_ARRAY[1][1] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec]
            } else if ((framesPerSec < 100)) {
                var tens = JR.idiv(framesPerSec, 10)
                var removeTens = JR.i32(tens * 10)
                _CHAR_ARRAY[1][0] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens]
                _CHAR_ARRAY[1][1] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[JR.i32(framesPerSec - removeTens)]
            } else {
                _CHAR_ARRAY[1][0] = _PLUS_CHAR
                _CHAR_ARRAY[1][1] = _PLUS_CHAR
            }
            var refreshesPerSec = JR.i32((JR.idiv(_totalRefreshes, totalTime)))
            if ((refreshesPerSec < 10)) {
                _CHAR_ARRAY[3][0] = _X_CHAR
                _CHAR_ARRAY[3][1] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec]
            } else if ((refreshesPerSec < 100)) {
                var tens = JR.idiv(refreshesPerSec, 10)
                var removeTens = JR.i32(tens * 10)
                _CHAR_ARRAY[3][0] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[JR.idiv(refreshesPerSec, 10)]
                _CHAR_ARRAY[3][1] = _primitiveLongSingleton.NUMBER_CHAR_ARRAY[JR.i32(refreshesPerSec - removeTens)]
            } else {
                _CHAR_ARRAY[3][0] = _PLUS_CHAR
                _CHAR_ARRAY[3][1] = _PLUS_CHAR
            }
        }
        return _CHAR_ARRAY
    }
    

    toStringArray() {
        var totalTime = _timeDelayHelper.getElapsed(_gameTickTimeDelayHelper.startTime)
        totalTime = (JR.idiv(totalTime, 10000))
        if ((totalTime > 0)) {
            _STRING_ARRAY[1] = JR.str(totalTime)
            _STRING_ARRAY[3] = JR.str(_totalFrames)
            _STRING_ARRAY[5] = JR.str(JR.idiv(_totalFrames, totalTime))
            _STRING_ARRAY[7] = JR.str(_totalRefreshes)
            _STRING_ARRAY[9] = JR.str(JR.idiv(_totalRefreshes, totalTime))
        } else {
            var string = _EMPTY_STRING
            _STRING_ARRAY[1] = string
            _STRING_ARRAY[3] = string
            _STRING_ARRAY[5] = string
            _STRING_ARRAY[7] = string
            _STRING_ARRAY[9] = string
        }
        return _STRING_ARRAY
    }
    

    toStringAt(totalTime) {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(_STRING_ARRAY[0])
        stringBuffer.appendlong(totalTime)
        stringBuffer.append(_STRING_ARRAY[2])
        stringBuffer.appendlong(_totalFrames)
        stringBuffer.append(_STRING_ARRAY[4])
        stringBuffer.appendlong(JR.idiv(_totalFrames, totalTime))
        if ((_totalRefreshes > 0)) {
            stringBuffer.append(_STRING_ARRAY[6])
            stringBuffer.appendlong(_totalRefreshes)
            stringBuffer.append(_STRING_ARRAY[8])
            stringBuffer.appendlong(JR.idiv(_totalRefreshes, totalTime))
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        }
        return stringBuffer.toString()
    }
    

    toString() {
        var totalTime = _timeDelayHelper.getElapsed(_gameTickTimeDelayHelper.startTime)
        totalTime = (JR.idiv(totalTime, 1000))
        if ((totalTime > 0)) {
            return this.toStringAt(totalTime)
        } else {
            return _NOT
        }
    }
}

import "../../../org/allbinary/logic/math/PrimitiveLongSingleton" for PrimitiveLongSingleton
import "../../../org/allbinary/logic/math/ScaleFactorFactory" for ScaleFactorFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../java/lang/Integer" for Integer
import "../../../java/lang/Long" for Long

