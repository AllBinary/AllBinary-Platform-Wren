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
// package org.allbinary.game.ag.layer.hud.basic.time

import "../../../../../../../../allbinary_java" for JObject, JException, JR

class HudTimer is JObject {
  startTime { _startTime }
  startTime=(value) { _startTime = value }
  hundredthTime { _hundredthTime }
  hundredthTime=(value) { _hundredthTime = value }
  maxTime { _maxTime }
  maxTime=(value) { _maxTime = value }
  modifier { _modifier }
  modifier=(value) { _modifier = value }
  hundrethsString { _hundrethsString }
  hundrethsString=(value) { _hundrethsString = value }
  totalDigits { _totalDigits }
  totalDigits=(value) { _totalDigits = value }
  primitiveLongUtil { _primitiveLongUtil }
  primitiveLongUtil=(value) { _primitiveLongUtil = value }
  MAX { _MAX }
  MAX=(value) { _MAX = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }

  initFields_HudTimer() {
    _startTime = 0
    _hundredthTime = 0
    _maxTime = 0
    _modifier = 0
    _hundrethsString = null
    _totalDigits = 0
    _primitiveLongUtil = null
    _MAX = null
    _gameTickTimeDelayHelper = null
        _startTime = -1
        _hundredthTime = 0
        
        _modifier = 0
        _hundrethsString = PrimitiveLongSingleton.getInstance().ZERO
        _totalDigits = 1
        
        _MAX = ["L".bytes[0], "O".bytes[0], "L".bytes[0]]
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
  }
    

    construct new(maxTime) {
    super()
    initFields_HudTimer()
        _primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime)
        _maxTime = maxTime
    }
    

    start() {
        _hundredthTime = 0
        _startTime = _gameTickTimeDelayHelper.startTime
    }
    

    get() {
        return _hundredthTime
    }
    

    update() {
        var lastLowerTime = _hundredthTime
        var currentTime = ((((_modifier + _gameTickTimeDelayHelper.startTime)) - _startTime))
        if ((currentTime < 0)) {
            currentTime = 0
        }
        _hundredthTime = JR.idiv(currentTime, 100)
        if ((_hundredthTime >= _maxTime)) {
            if ((_startTime > 0)) {
                _hundrethsString = _MAX
            }
        } else if ((lastLowerTime != _hundredthTime)) {
            _hundrethsString = _primitiveLongUtil.getCharArray(JR.i32(_hundredthTime))
            _totalDigits = _primitiveLongUtil.getCurrentTotalDigits()
        }
    }
    

    reduce(value) {
        _modifier = JR.i32(_modifier - value)
    }
    

    add(value) {
        _modifier = JR.i32(_modifier + value)
    }
    

    getTimeChars() {
        return _hundrethsString
    }
    

    getCurrentTotalDigits() {
        return _totalDigits
    }
}

import "../../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton" for PrimitiveLongSingleton
import "../../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil" for PrimitiveLongUtil
import "../../../../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory

