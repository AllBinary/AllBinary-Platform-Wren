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

class PacePatrolAI is BasePatrolAI {
  trackingList { _trackingList }
  trackingList=(value) { _trackingList = value }
  firingDistance { _firingDistance }
  firingDistance=(value) { _firingDistance = value }
  isFollowLimitedByTerrain { _isFollowLimitedByTerrain }
  isFollowLimitedByTerrain=(value) { _isFollowLimitedByTerrain = value }

  initFields_PacePatrolAI() {
    _trackingList = null
    _firingDistance = 0
    _isFollowLimitedByTerrain = false
        
        _firingDistance = 0
        _isFollowLimitedByTerrain = false
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(hashtable, ownerLayerInterface, gameInput)
        initFields_PacePatrolAI()
        TrackingEventHandler.getInstance().addListenerInterface(this)
        _trackingList = BasicArrayListD.new()
    }
    

    processAI(allBinaryLayerManager) {
        this.update()
        var direction = this.setFiringDirectionForTargetIfInRange()
        var directionFactory = DirectionFactory.getInstance()
        if ((direction == directionFactory.LEFT)) {
            if (((this.lastKeyDirection != this.keyDirection) || !_isFollowLimitedByTerrain)) {
                super.processKeyAI(Canvas.LEFT)
            }
            this.keyDirection = Canvas.LEFT
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = 0
            super.processKeyAI(Canvas.KEY_NUM1)
        } else if ((direction == directionFactory.RIGHT)) {
            if (((this.lastKeyDirection != this.keyDirection) || !_isFollowLimitedByTerrain)) {
                super.processKeyAI(Canvas.RIGHT)
            }
            this.keyDirection = Canvas.RIGHT
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = 0
            super.processKeyAI(Canvas.KEY_NUM1)
        } else {
            super.processKeyAI(this.keyDirection)
        }
    }
    

    setFiringDirectionForTargetIfInRange() {
        var directionFactory = DirectionFactory.getInstance()
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var direction = directionFactory.NOT_BORDERED_WITH
        var lastTrackingEvent = null
        var lastTrackingLayerInterface = null
        var directionCompositeInterface = null
        var size = _trackingList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            lastTrackingEvent = _trackingList.get(0)
            lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
            var x = lastTrackingLayerInterface.getXP()
            var y = lastTrackingLayerInterface.getYP()
            var yDistance = ((ownerLayerInterface.getYP() - y) - ownerLayerInterface.getHeight())
            var xDistance = ((ownerLayerInterface.getXP() - x) - ownerLayerInterface.getWidth())
            var absXDistance = (xDistance).abs
            var absYDistance = (yDistance).abs
            if ((absYDistance <= 100)) {
                if ((absXDistance < JR.idiv(this.getFiringDistance(), 2))) {
                    directionCompositeInterface = this.getOwnerLayerInterface()
                    if (((xDistance < 0) && (directionCompositeInterface.getDirection() == directionFactory.RIGHT))) {
                        direction = directionFactory.RIGHT
                    } else if (((xDistance > 0) && (directionCompositeInterface.getDirection() == directionFactory.LEFT))) {
                        direction = directionFactory.LEFT
                    }
                }
            }
            }
        }
        return direction
    }
    

    disable() {
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onMovement(trackingEvent) {
        _trackingList.clear()
        _trackingList.add(trackingEvent)
    }
    

    getFiringDistance() {
        return _firingDistance
    }
    

    setFiringDistance(firingDistance) {
        _firingDistance = firingDistance
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/direction/Direction" for Direction
import "../../../../../../org/allbinary/direction/DirectionCompositeInterface" for DirectionCompositeInterface
import "../../../../../../org/allbinary/direction/DirectionFactory" for DirectionFactory
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/tracking/TrackingEvent" for TrackingEvent
import "../../../../../../org/allbinary/game/tracking/TrackingEventHandler" for TrackingEventHandler
import "../../../../../../org/allbinary/game/tracking/TrackingEventListenerInterface" for TrackingEventListenerInterface
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/layer/LayerInterface" for LayerInterface
import "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

