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
import "./BasePatrolAI" for BasePatrolAI

class RandomPatrolAI is BasePatrolAI {
  changedDirection { _changedDirection }
  changedDirection=(value) { _changedDirection = value }

  initFields_RandomPatrolAI() {
    _changedDirection = false
        _changedDirection = true
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(hashtable, ownerLayerInterface, gameInput)
        initFields_RandomPatrolAI()
        this.updateRandomDistance()
    }
    

    updateRandomDistance() {
        this.currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt(this.maxDistance.intValue())
    }
    

    processAI(allBinaryLayerManager) {
        super.update()
        super.processKeyAI(this.keyDirection)
        if (_changedDirection) {
            super.processKeyAI(Canvas.KEY_NUM1)
            this.updateRandomDistance()
            _changedDirection = false
        }
    }
    

    nextDirection() {
        super.nextDirection()
        _changedDirection = true
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable

