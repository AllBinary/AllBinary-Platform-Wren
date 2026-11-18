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

class HorizontalScreenPatrolAI is BasicAI {
    static SOUND {
    if (__SOUND_set == null) {
      __SOUND_set = true
      __SOUND = SmallIntegerSingletonFactory.getInstance().getAt(433)
    }
    return __SOUND
  }
  static SOUND=(value) {
    __SOUND_set = true
    __SOUND = value
  }
  keyDirection { _keyDirection }
  keyDirection=(value) { _keyDirection = value }
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  firingX { _firingX }
  firingX=(value) { _firingX = value }
  firedIndex { _firedIndex }
  firedIndex=(value) { _firedIndex = value }
  MAX_FIRE { _MAX_FIRE }
  MAX_FIRE=(value) { _MAX_FIRE = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  secondaryPlayerQueue { _secondaryPlayerQueue }
  secondaryPlayerQueue=(value) { _secondaryPlayerQueue = value }
  sound { _sound }
  sound=(value) { _sound = value }

  initFields_HorizontalScreenPatrolAI() {
    _keyDirection = 0
    _displayInfoSingleton = null
    _firingX = 0
    _firedIndex = 0
    _MAX_FIRE = 0
    _timeDelayHelper = null
    _secondaryPlayerQueue = null
    _sound = null
        _keyDirection = Canvas.LEFT
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _firingX = _displayInfoSingleton.getLastHalfWidth()
        _firedIndex = 0
        _MAX_FIRE = 28
        _timeDelayHelper = TimeDelayHelper.new(240)
        _secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
        
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_HorizontalScreenPatrolAI()
        _sound = hashtable.get(HorizontalScreenPatrolAI.SOUND)
        if ((_sound == null)) {
            Fiber.abort(JR.exception("Exception", "No Sound Provided!!"))
        }
    }
    

    processAI(allBinaryLayerManager) {
        super.processKeyAI(_keyDirection)
        if (_timeDelayHelper.isTimeTNT()) {
            var layerInterface = this.getOwnerLayerInterface()
            var currentOwnerLayerX = layerInterface.getXP()
            if ((currentOwnerLayerX < -layerInterface.getWidth())) {
                var y = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50)
                layerInterface.setPosition(((_displayInfoSingleton.getLastWidth() + layerInterface.getWidth()) + 50), y, layerInterface.getZP())
                _firedIndex = 0
                _firingX = (_displayInfoSingleton.getLastHalfWidth() + MyRandomFactory.getInstance().getNextInt(_displayInfoSingleton.getLastHalfWidth()))
                _secondaryPlayerQueue.add(_sound)
            }
            if (((currentOwnerLayerX < _firingX) && (currentOwnerLayerX > -layerInterface.getWidth()))) {
                super.processKeyAI(Canvas.KEY_NUM1)
                var gameLayerManager = allBinaryLayerManager
                var FIRE = JR.shr(((gameLayerManager.getGameInfo().getCurrentLevel() + 12)), 2)
                if ((FIRE > _MAX_FIRE)) {
                    FIRE = _MAX_FIRE
                }
                if ((_firedIndex > FIRE)) {
                    _firedIndex = 0
                    _firingX = Integer.MIN_VALUE
                }
                _firedIndex = JR.i32(_firedIndex + 1)
            }
        }
    }
    

    nextDirection() {
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../org/allbinary/media/audio/PlayerQueue" for PlayerQueue
import "../../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory" for SecondaryPlayerQueueFactory
import "../../../../../../org/allbinary/media/audio/Sound" for Sound
import "../../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../../java/lang/Integer" for Integer

