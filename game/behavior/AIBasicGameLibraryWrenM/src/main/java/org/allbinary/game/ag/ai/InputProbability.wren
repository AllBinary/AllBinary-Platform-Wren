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
// package org.allbinary.game.ag.ai

import "../../../../../allbinary_java" for JObject, JException, JR

class InputProbability is JObject {
    static INPUT_PROBABILITY {
    if (__INPUT_PROBABILITY_set == null) {
      __INPUT_PROBABILITY_set = true
      __INPUT_PROBABILITY = SmallIntegerSingletonFactory.getInstance().getAt(0)
    }
    return __INPUT_PROBABILITY
  }
  static INPUT_PROBABILITY=(value) {
    __INPUT_PROBABILITY_set = true
    __INPUT_PROBABILITY = value
  }
  likelyhoodIntegerArray { _likelyhoodIntegerArray }
  likelyhoodIntegerArray=(value) { _likelyhoodIntegerArray = value }
  repeatLikelyhoodIntegerArray { _repeatLikelyhoodIntegerArray }
  repeatLikelyhoodIntegerArray=(value) { _repeatLikelyhoodIntegerArray = value }
  max { _max }
  max=(value) { _max = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }

  initFields_InputProbability() {
    _likelyhoodIntegerArray = null
    _repeatLikelyhoodIntegerArray = null
    _max = 0
    _timeDelayHelper = null
        
        
        
        
  }
    

    construct new(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper) {
    super()
    initFields_InputProbability()
        _likelyhoodIntegerArray = likelyhoodIntegerArray
        _repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
        _max = max
        _timeDelayHelper = timeDelayHelper
    }
    

    getLikelyhoodIntegerArray() {
        return _likelyhoodIntegerArray
    }
    

    getRepeatLikelyhoodIntegerArray() {
        return _repeatLikelyhoodIntegerArray
    }
    

    getMax() {
        return _max
    }
    

    getTimeDelayHelper() {
        return _timeDelayHelper
    }
    

    toHashtable() {
        var hashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(InputProbability.INPUT_PROBABILITY, this)
        return hashtable
    }
}

import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../java/lang/Integer" for Integer

