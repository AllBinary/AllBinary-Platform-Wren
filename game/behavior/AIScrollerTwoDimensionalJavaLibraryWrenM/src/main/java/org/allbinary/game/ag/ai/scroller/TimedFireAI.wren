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
// package org.allbinary.game.ag.ai.scroller

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/ai/BasicAI" for BasicAI

class TimedFireAI is BasicAI {
    static TIME {
    if (__TIME_set == null) {
      __TIME_set = true
      __TIME = SmallIntegerSingletonFactory.getInstance().getAt(1)
    }
    return __TIME
  }
  static TIME=(value) {
    __TIME_set = true
    __TIME = value
  }
  maxFireDelayTimeHelper { _maxFireDelayTimeHelper }
  maxFireDelayTimeHelper=(value) { _maxFireDelayTimeHelper = value }
  delay { _delay }
  delay=(value) { _delay = value }

  initFields_TimedFireAI() {
    _maxFireDelayTimeHelper = null
    _delay = 0
        _maxFireDelayTimeHelper = TimeDelayHelper.new(0)
        
  }
    

    construct new(delay, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_TimedFireAI()
        _delay = delay
    }
    

    processAI(allBinaryLayerManager) {
        var timeFiredInterface = this.getOwnerLayerInterface()
        if ((_maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && ((timeFiredInterface.getLastFireTime() + _maxFireDelayTimeHelper.delay) < _maxFireDelayTimeHelper.getStartTime()))) {
            super.processKeyAI(Canvas.KEY_NUM1)
            _maxFireDelayTimeHelper.delay = _delay
        }
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../../java/lang/Integer" for Integer
import "./TimeFiredInterface" for TimeFiredInterface

