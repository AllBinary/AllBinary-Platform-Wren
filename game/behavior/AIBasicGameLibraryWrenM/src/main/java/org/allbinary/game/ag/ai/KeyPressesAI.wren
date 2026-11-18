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
import "../../../../../org/allbinary/game/ai/BasicAI" for BasicAI

class KeyPressesAI is BasicAI {
  on { _on }
  on=(value) { _on = value }
  keys { _keys }
  keys=(value) { _keys = value }

  initFields_KeyPressesAI() {
    _on = false
    _keys = null
        _on = true
        
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_KeyPressesAI()
        _keys = List.filled(hashtable.size(), null)
        var objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var size = objectArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _keys[index] = hashtable.get(objectArray[index])
            }
        }
    }
    

    processAI(allBinaryLayerManager) {
        if (_on) {
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < _keys.count))) break
                super.processKeyAI(_keys[index].intValue())
                }
            }
        }
    }
    

    toggle() {
        if (this.isOn()) {
            this.setOn(false)
        } else {
            this.setOn(true)
        }
    }
    

    disable() {
        this.setOn(false)
    }
    

    enable() {
        this.setOn(true)
    }
    

    setOn(on) {
        _on = on
    }
    

    isOn() {
        return _on
    }
}

import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../java/lang/Integer" for Integer

