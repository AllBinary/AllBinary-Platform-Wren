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
// package org.allbinary.game.ag.ai.tactical

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/ai/BasicAI" for BasicAI

class BasicRandomAI is BasicAI {
  i_random { _i_random }
  i_random=(value) { _i_random = value }
  inputProbability { _inputProbability }
  inputProbability=(value) { _inputProbability = value }
  visitor { _visitor }
  visitor=(value) { _visitor = value }
  keyArray { _keyArray }
  keyArray=(value) { _keyArray = value }
  myRandomFactory { _myRandomFactory }
  myRandomFactory=(value) { _myRandomFactory = value }

  initFields_BasicRandomAI() {
    _i_random = 0
    _inputProbability = null
    _visitor = null
    _keyArray = null
    _myRandomFactory = null
        _i_random = 0
        
        
        _keyArray = [Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9]
        _myRandomFactory = MyRandomFactory.getInstance()
  }
    

    construct new(ownerLayerInterface, gameInput, inputProbability, visitor) {
        super(ownerLayerInterface, gameInput)
        initFields_BasicRandomAI()
        _inputProbability = inputProbability
        _visitor = visitor
    }
    

    processAI(allBinaryLayerManager) {
        if (_inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            _i_random = _myRandomFactory.getAbsoluteNextInt(_inputProbability.getMax())
            var repeat = false
            var repeatLikelyhoodIntegerArray = _inputProbability.getRepeatLikelyhoodIntegerArray()
            if (((this.getLastKey() != -1) && (repeatLikelyhoodIntegerArray[this.getLastKey()].intValue() >= _i_random))) {
                repeat = true
            }
            if (!repeat) {
                var likelyhoodIntegerArray = _inputProbability.getLikelyhoodIntegerArray()
                _i_random = _myRandomFactory.getAbsoluteNextInt(_inputProbability.getMax())
                var size = _keyArray.count
                var likelyhoodIntegerKeyArray = null
                if (true) {
                    var index = 0
                    var jfirst = true
                    while (true) {
                        if (!jfirst) {
                            index = JR.i32(index + 1)
                        }
                        jfirst = false
                        if (!((index < size))) break
                    var key = _keyArray[index]
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key]
                    if (((likelyhoodIntegerArray.count >= key) && (likelyhoodIntegerKeyArray[0] != null))) {
                        if (((_i_random >= likelyhoodIntegerKeyArray[0].intValue()) && (_i_random < likelyhoodIntegerKeyArray[1].intValue()))) {
                            this.setLastKey(key)
                            break
                        }
                    }
                    }
                }
            }
            _visitor.visit(this)
        }
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/ag/ai/InputProbability" for InputProbability
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../../java/lang/Integer" for Integer

