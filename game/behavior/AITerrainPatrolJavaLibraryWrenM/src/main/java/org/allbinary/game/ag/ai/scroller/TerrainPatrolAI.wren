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
import "./PacePatrolAI" for PacePatrolAI

class TerrainPatrolAI is PacePatrolAI {
  terrainEventListener { _terrainEventListener }
  terrainEventListener=(value) { _terrainEventListener = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  CLIFF { _CLIFF }
  CLIFF=(value) { _CLIFF = value }

  initFields_TerrainPatrolAI() {
    _terrainEventListener = null
    _DOWN = null
    _CLIFF = null
        _terrainEventListener = TerrainEventListener.new()
        _DOWN = AngleFactory.getInstance().DOWN
        _CLIFF = BasicTerrainInfo.new(_DOWN)
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(hashtable, ownerLayerInterface, gameInput)
        initFields_TerrainPatrolAI()
        TerrainEventHandler.getInstance(ownerLayerInterface).addListener(_terrainEventListener)
        _terrainEventListener.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().getNext(_CLIFF))
    }
    

    update() {
        super.update()
        this.changeDirectionIfCliffReached()
    }
    

    changeDirectionIfCliffReached() {
        var list = _terrainEventListener.getList()
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var terrainEvent = list.removeAt(index)
            var basicTerrainInfo = terrainEvent.getBasicTerrainInfo()
            var angle = basicTerrainInfo.getAngle()
            if ((angle == _DOWN)) {
                this.nextDirection()
                if (!this.isFollowLimitedByTerrain) {
                    this.logUtil.putF("Following Limited", this, "onTerrainEvent")
                    this.isFollowLimitedByTerrain = true
                }
            }
            }
        }
    }
}

import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/terrain/BasicTerrainInfo" for BasicTerrainInfo
import "../../../../../../org/allbinary/game/terrain/TerrainEvent" for TerrainEvent
import "../../../../../../org/allbinary/game/terrain/TerrainEventCircularStaticPool" for TerrainEventCircularStaticPool
import "../../../../../../org/allbinary/game/terrain/TerrainEventHandler" for TerrainEventHandler
import "../../../../../../org/allbinary/game/terrain/TerrainEventListener" for TerrainEventListener
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/math/Angle" for Angle
import "../../../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

