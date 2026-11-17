/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class GameTickTimeDelayHelper is JObject {
  timeDelta { _timeDelta }
  timeDelta=(value) { _timeDelta = value }
  startTime { _startTime }
  startTime=(value) { _startTime = value }
  lastStartTime { _lastStartTime }
  lastStartTime=(value) { _lastStartTime = value }

  initFields_GameTickTimeDelayHelper() {
    _timeDelta = 0
    _startTime = 0
    _lastStartTime = 0
        _timeDelta = 0
        
        
  }
    

    construct new(startTime) {
    super()
    initFields_GameTickTimeDelayHelper()
        _startTime = startTime
        _lastStartTime = 0
    }
    

    setStartTime() {
        _startTime = JR.currentTimeMillis()
        return _startTime
    }
    

    loop() {
        if ((_lastStartTime == Long.MIN_VALUE)) {
            _timeDelta = 0
        } else {
            _timeDelta = (JR.currentTimeMillis() - _lastStartTime)
        }
    }
    

    getTimeFromStart() {
        return JR.i32(_startTime - _lastStartTime)
    }
}

import "../../../java/lang/System" for JSystem
import "../../../java/lang/Long" for Long

