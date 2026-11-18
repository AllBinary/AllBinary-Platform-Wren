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

class DiveAndDirectionalTrackingAI is BasicAI {
  mathUtil { _mathUtil }
  mathUtil=(value) { _mathUtil = value }
  directionFactory { _directionFactory }
  directionFactory=(value) { _directionFactory = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  list { _list }
  list=(value) { _list = value }
  directionalInterface { _directionalInterface }
  directionalInterface=(value) { _directionalInterface = value }
  velocityInterface { _velocityInterface }
  velocityInterface=(value) { _velocityInterface = value }
  directionToKeyMap { _directionToKeyMap }
  directionToKeyMap=(value) { _directionToKeyMap = value }
  initialDropped { _initialDropped }
  initialDropped=(value) { _initialDropped = value }
  diveP { _diveP }
  diveP=(value) { _diveP = value }
  directionOfTarget { _directionOfTarget }
  directionOfTarget=(value) { _directionOfTarget = value }
  MIN_DISTANCE { _MIN_DISTANCE }
  MIN_DISTANCE=(value) { _MIN_DISTANCE = value }
  lastTrackingLayerInterface { _lastTrackingLayerInterface }
  lastTrackingLayerInterface=(value) { _lastTrackingLayerInterface = value }
  artificialIntelligenceInterface { _artificialIntelligenceInterface }
  artificialIntelligenceInterface=(value) { _artificialIntelligenceInterface = value }
  aiVistor { _aiVistor }
  aiVistor=(value) { _aiVistor = value }
  lastDirection { _lastDirection }
  lastDirection=(value) { _lastDirection = value }

  initFields_DiveAndDirectionalTrackingAI() {
    _mathUtil = null
    _directionFactory = null
    _gameTickTimeDelayHelper = null
    _timeDelayHelper = null
    _list = null
    _directionalInterface = null
    _velocityInterface = null
    _directionToKeyMap = null
    _initialDropped = false
    _diveP = false
    _directionOfTarget = null
    _MIN_DISTANCE = 0
    _lastTrackingLayerInterface = null
    _artificialIntelligenceInterface = null
    _aiVistor = null
    _lastDirection = null
        _mathUtil = MathUtil.getInstance()
        _directionFactory = DirectionFactory.getInstance()
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        _timeDelayHelper = TimeDelayHelper.new(500)
        _list = BasicArrayListD.new()
        
        
        _directionToKeyMap = [Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT]
        _initialDropped = false
        _diveP = false
        _directionOfTarget = Direction.getInstance(0)
        _MIN_DISTANCE = 40
        _lastTrackingLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
        
        
        _lastDirection = DirectionFactory.getInstance().NO_DIRECTION
  }
    

    construct new(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor) {
        super(ownerLayerInterface, gameInput)
        initFields_DiveAndDirectionalTrackingAI()
        _aiVistor = visitor
        _artificialIntelligenceInterface = artificialIntelligenceInterface
        var directionalCompositeInterface = this.getOwnerLayerInterface()
        _directionalInterface = directionalCompositeInterface.getDirectionalInterface()
        var velocityInterfaceCompositeInterface = this.getOwnerLayerInterface()
        _velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        DestroyedEventHandler.getInstance().addListenerInterface(this)
        this.init()
    }
    

    processAI(allBinaryLayerManager) {
        if (this.isBeyondTarget()) {
            this.init()
            _velocityInterface.zero()
        }
        if (!_diveP) {
            this.target(allBinaryLayerManager)
        } else {
            this.dive()
            this.attack()
        }
        _list.clear()
    }
    

    init() {
        _diveP = false
        _directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH
        TrackingEventHandler.getInstance().addListenerInterface(this)
    }
    

    target(allBinaryLayerManager) {
        if ((_list.size() == 0)) {
            return
        }
        var lastTrackingEvent = _list.removeAt(0)
        _lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
        var layerInterface = _lastTrackingLayerInterface
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var groupArray = layerInterface.getGroupInterface()
        var ownerGroupArray = ownerLayerInterface.getGroupInterface()
        if ((groupArray == ownerGroupArray)) {
            return
        }
        var x = _lastTrackingLayerInterface.getXP()
        var y = _lastTrackingLayerInterface.getYP()
        var yDistance = ((ownerLayerInterface.getYP() - y) - ownerLayerInterface.getHeight())
        var xDistance = ((ownerLayerInterface.getXP() - x) - ownerLayerInterface.getWidth())
        var directionFactory = DirectionFactory.getInstance()
        if ((_mathUtil.abs(yDistance) > _mathUtil.abs(xDistance))) {
            if ((yDistance > _MIN_DISTANCE)) {
                _directionOfTarget = directionFactory.UP
            } else if ((yDistance < -_MIN_DISTANCE)) {
                _directionOfTarget = directionFactory.DOWN
            }
        } else {
            if ((xDistance > _MIN_DISTANCE)) {
                _directionOfTarget = directionFactory.LEFT
            } else if ((xDistance < -_MIN_DISTANCE)) {
                _directionOfTarget = directionFactory.RIGHT
            }
        }
        if ((!_initialDropped && (_directionOfTarget != directionFactory.NOT_BORDERED_WITH))) {
            this.drop()
        }
        if (_initialDropped) {
            if (((_directionOfTarget == directionFactory.UP) || (_directionOfTarget == directionFactory.DOWN))) {
                this.verticalTargeting(x)
            } else if (((_directionOfTarget == directionFactory.LEFT) || (_directionOfTarget == directionFactory.RIGHT))) {
                this.horizontalTargeting(y)
            } else {
                _artificialIntelligenceInterface.processAI(allBinaryLayerManager)
            }
        }
    }
    

    verticalTargeting(x) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        if ((ownerLayerInterface.getXP() < x)) {
            this.moveRight()
        }
        if ((ownerLayerInterface.getXP() > x)) {
            this.moveLeft()
        }
        if (((ownerLayerInterface.getXP() > JR.i32(x - 3)) && (ownerLayerInterface.getXP() < JR.i32(x + 3)))) {
            this.setDive()
        }
    }
    

    horizontalTargeting(y) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        if ((ownerLayerInterface.getYP() < y)) {
            this.moveDown()
        }
        if ((ownerLayerInterface.getYP() > y)) {
            this.moveUp()
        }
        if (((ownerLayerInterface.getYP() > JR.i32(y - 3)) && (ownerLayerInterface.getYP() < JR.i32(y + 3)))) {
            this.setDive()
        }
    }
    

    setDive() {
        _diveP = true
        _velocityInterface.zero()
        TrackingEventHandler.getInstance().removeListener(this)
    }
    

    moveRight() {
        this.setLastDirection(_directionFactory.RIGHT)
        _directionalInterface.setFrameByDirection(_lastDirection)
        _aiVistor.visit(this)
    }
    

    moveLeft() {
        this.setLastDirection(_directionFactory.LEFT)
        _directionalInterface.setFrameByDirection(_lastDirection)
        _aiVistor.visit(this)
    }
    

    moveDown() {
        this.setLastDirection(_directionFactory.DOWN)
        _directionalInterface.setFrameByDirection(_lastDirection)
        _aiVistor.visit(this)
    }
    

    moveUp() {
        this.setLastDirection(_directionFactory.UP)
        _directionalInterface.setFrameByDirection(_lastDirection)
        _aiVistor.visit(this)
    }
    

    dive() {
        _directionalInterface.setFrameByDirection(_directionOfTarget)
        _aiVistor.visit(this)
    }
    

    attack() {
        super.processKeyAI(Canvas.KEY_NUM1)
    }
    

    drop() {
        if (_timeDelayHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
            _initialDropped = true
            _aiVistor.visit(this)
        }
    }
    

    isBeyondTarget() {
        if ((_directionOfTarget == _directionFactory.DOWN)) {
            if ((this.getOwnerLayerInterface().getYP() > (_lastTrackingLayerInterface.getYP() + _MIN_DISTANCE))) {
                return true
            } else {
                return false
            }
        } else if ((_directionOfTarget == _directionFactory.UP)) {
            if ((this.getOwnerLayerInterface().getYP() < (_lastTrackingLayerInterface.getYP() + _MIN_DISTANCE))) {
                return true
            } else {
                return false
            }
        } else if ((_directionOfTarget == _directionFactory.RIGHT)) {
            if ((this.getOwnerLayerInterface().getXP() > (_lastTrackingLayerInterface.getXP() + _MIN_DISTANCE))) {
                return true
            } else {
                return false
            }
        } else if ((_directionOfTarget == _directionFactory.LEFT)) {
            if ((this.getOwnerLayerInterface().getXP() < (_lastTrackingLayerInterface.getXP() + _MIN_DISTANCE))) {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onMovement(trackingEvent) {
        _list.add(trackingEvent)
    }
    

    onDestroyed(destroyedEvent) {
        if ((this.getOwnerLayerInterface() == destroyedEvent.getLayerInterface())) {
            TrackingEventHandler.getInstance().removeListener(this)
            DestroyedEventHandler.getInstance().removeListener(this)
        }
    }
    

    setLastDirection(lastDirection) {
        _lastDirection = lastDirection
        var value = this.getLastDirection().getValue()
        if ((value < 4)) {
            super.setLastKey(_directionToKeyMap[value])
        }
    }
    

    setLastKey(lastKey) {
        super.setLastKey(lastKey)
        if ((this.getLastKey() == Canvas.LEFT)) {
            _lastDirection = DirectionFactory.getInstance().LEFT
        } else if ((this.getLastKey() == Canvas.DOWN)) {
            _lastDirection = DirectionFactory.getInstance().DOWN
        } else if ((this.getLastKey() == Canvas.UP)) {
            _lastDirection = DirectionFactory.getInstance().UP
        } else if ((this.getLastKey() == Canvas.RIGHT)) {
            _lastDirection = DirectionFactory.getInstance().RIGHT
        }
    }
    

    getLastDirection() {
        return _lastDirection
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(super.toString())
        stringBuffer.append(" LastDirection: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getLastDirection()))
        return stringBuffer.toString()
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/direction/Direction" for Direction
import "../../../../../org/allbinary/direction/DirectionFactory" for DirectionFactory
import "../../../../../org/allbinary/direction/DirectionalCompositeInterface" for DirectionalCompositeInterface
import "../../../../../org/allbinary/direction/DirectionalInterface" for DirectionalInterface
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEvent" for DestroyedEvent
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler" for DestroyedEventHandler
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface" for DestroyedEventListenerInterface
import "../../../../../org/allbinary/game/identification/Group" for Group
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties" for BasicVelocityProperties
import "../../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" for VelocityInterfaceCompositeInterface
import "../../../../../org/allbinary/game/tracking/TrackingEvent" for TrackingEvent
import "../../../../../org/allbinary/game/tracking/TrackingEventHandler" for TrackingEventHandler
import "../../../../../org/allbinary/game/tracking/TrackingEventListenerInterface" for TrackingEventListenerInterface
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

