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
import "./KeyPressesAI" for KeyPressesAI

class MultiKeyPressesAI is KeyPressesAI {
  toggleTimeHelper { _toggleTimeHelper }
  toggleTimeHelper=(value) { _toggleTimeHelper = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }

  initFields_MultiKeyPressesAI() {
    _toggleTimeHelper = null
    _gameTickTimeDelayHelper = null
        _toggleTimeHelper = TimeDelayHelper.new(600)
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(hashtable, ownerLayerInterface, gameInput)
        initFields_MultiKeyPressesAI()
        this.update()
    }
    

    processAI(allBinaryLayerManager) {
    }
    

    update() {
        var gameInput = this.getGameInput()
        var keys = this.keys
        var size = keys.count
        if (this.isOn()) {
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                var key = keys[index].intValue()
                if ((key != -1)) {
                    gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key))
                }
                }
            }
        } else {
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                var key = keys[index].intValue()
                if ((key != -1)) {
                    gameInput.addForRemoval(this.gameKeyEventFactory.getInstanceForKey(this, key))
                }
                }
            }
        }
    }
    

    toggle() {
        if (_toggleTimeHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
            super.toggle()
            this.update()
        }
    }
    

    disable() {
        if (_toggleTimeHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
            super.disable()
            this.update()
        }
    }
    

    enable() {
        if (_toggleTimeHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
            super.enable()
            this.update()
        }
    }
}

import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../java/lang/Integer" for Integer

