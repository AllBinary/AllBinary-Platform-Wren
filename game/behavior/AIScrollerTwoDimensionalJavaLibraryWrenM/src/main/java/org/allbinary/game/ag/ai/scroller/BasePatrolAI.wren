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

class BasePatrolAI is BasicAI {
    static MAX_DISTANCE {
    if (__MAX_DISTANCE_set == null) {
      __MAX_DISTANCE_set = true
      __MAX_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(2)
    }
    return __MAX_DISTANCE
  }
  static MAX_DISTANCE=(value) {
    __MAX_DISTANCE_set = true
    __MAX_DISTANCE = value
  }
    static DIRECTION_ARRAY {
    if (__DIRECTION_ARRAY_set == null) {
      __DIRECTION_ARRAY_set = true
      __DIRECTION_ARRAY = SmallIntegerSingletonFactory.getInstance().getAt(3)
    }
    return __DIRECTION_ARRAY
  }
  static DIRECTION_ARRAY=(value) {
    __DIRECTION_ARRAY_set = true
    __DIRECTION_ARRAY = value
  }
    static FIRING_DISTANCE {
    if (__FIRING_DISTANCE_set == null) {
      __FIRING_DISTANCE_set = true
      __FIRING_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(4)
    }
    return __FIRING_DISTANCE
  }
  static FIRING_DISTANCE=(value) {
    __FIRING_DISTANCE_set = true
    __FIRING_DISTANCE = value
  }
    static SPEED {
    if (__SPEED_set == null) {
      __SPEED_set = true
      __SPEED = SmallIntegerSingletonFactory.getInstance().getAt(5)
    }
    return __SPEED
  }
  static SPEED=(value) {
    __SPEED_set = true
    __SPEED = value
  }
  maxDistance { _maxDistance }
  maxDistance=(value) { _maxDistance = value }
  currentDistance { _currentDistance }
  currentDistance=(value) { _currentDistance = value }
  xTotalDistance { _xTotalDistance }
  xTotalDistance=(value) { _xTotalDistance = value }
  lastKeyDirection { _lastKeyDirection }
  lastKeyDirection=(value) { _lastKeyDirection = value }
  keyDirection { _keyDirection }
  keyDirection=(value) { _keyDirection = value }

  initFields_BasePatrolAI() {
    _maxDistance = null
    _currentDistance = 0
    _xTotalDistance = 0
    _lastKeyDirection = 0
    _keyDirection = 0
        
        
        _xTotalDistance = 0
        _lastKeyDirection = Canvas.RIGHT
        _keyDirection = Canvas.RIGHT
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_BasePatrolAI()
        _maxDistance = hashtable.get(BasePatrolAI.MAX_DISTANCE)
        _currentDistance = _maxDistance.intValue()
    }
    

    update() {
        this.updateTotalDistance()
        this.changeDirectionIfReachedPacingAreaMax()
    }
    

    updateTotalDistance() {
        var velocityInterfaceCompositeInterface = this.getOwnerLayerInterface()
        var velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties()
        _xTotalDistance = JR.i32(_xTotalDistance + velocityProperties.getVelocityXBasicDecimalP().getScaled())
    }
    

    changeDirectionIfReachedPacingAreaMax() {
        var mathUtil = MathUtil.getInstance()
        var totalDistance = mathUtil.abs(_xTotalDistance)
        if ((totalDistance > _currentDistance)) {
            this.nextDirection()
        }
    }
    

    nextDirection() {
        if ((_lastKeyDirection == Canvas.LEFT)) {
            _keyDirection = Canvas.RIGHT
            _lastKeyDirection = _keyDirection
            _xTotalDistance = 0
        } else if ((_lastKeyDirection == Canvas.RIGHT)) {
            _keyDirection = Canvas.LEFT
            _lastKeyDirection = _keyDirection
            _xTotalDistance = 0
        }
    }
    

    disable() {
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../../java/lang/Integer" for Integer

