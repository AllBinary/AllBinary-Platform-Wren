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

class FlockingAI is BasicAI {
  allowedDistance { _allowedDistance }
  allowedDistance=(value) { _allowedDistance = value }

  initFields_FlockingAI() {
    _allowedDistance = 0
        
  }
    

    construct new(hashtable, ownerLayerInterface, gameInput) {
        super(ownerLayerInterface, gameInput)
        initFields_FlockingAI()
        var allowedDistance = hashtable.get(BasePatrolAI.MAX_DISTANCE)
        _allowedDistance = allowedDistance.intValue()
    }
    

    processAI(allBinaryLayerManager) {
        var maxDistance = 0
        var farAllbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER
        var groupLayerManagerListener = GroupLayerManagerListener.getInstance()
        var list = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY)
        var size = list.size()
        var allBinaryLayer = null
        var ownerLayerInterface = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            allBinaryLayer = list.get(index)
            if ((allBinaryLayer.getType() != WeaponLayer.getStaticType())) {
                var distance = this.getXYDistance(allBinaryLayer)
                if ((distance > maxDistance)) {
                    maxDistance = distance
                    farAllbinaryLayer = allBinaryLayer
                    if ((distance > _allowedDistance)) {
                        break
                    }
                }
            }
            }
        }
        if ((maxDistance > _allowedDistance)) {
            if ((farAllbinaryLayer != AllBinaryLayer.NULL_ALLBINARY_LAYER)) {
                ownerLayerInterface = this.getOwnerLayerInterface()
                if ((farAllbinaryLayer.getXP() < ownerLayerInterface.getXP())) {
                    this.processKeyAI(Canvas.LEFT)
                } else if ((farAllbinaryLayer.getXP() > ownerLayerInterface.getXP())) {
                    this.processKeyAI(Canvas.RIGHT)
                } else if ((farAllbinaryLayer.getYP() > ownerLayerInterface.getYP())) {
                    this.processKeyAI(Canvas.UP)
                } else if ((farAllbinaryLayer.getYP() < ownerLayerInterface.getYP())) {
                    this.processKeyAI(Canvas.DOWN)
                }
            }
        }
    }
    

    getXYDistance(allBinaryLayer) {
        var ownerLayerInterface = this.getOwnerLayerInterface()
        var xTotalDistance = (((allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth())) - ((ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth())))
        var yTotalDistance = (((allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight())) - ((ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight())))
        var mathUtil = MathUtil.getInstance()
        var totalDistance = (mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance))
        return totalDistance
    }
}

import "../../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../../org/allbinary/game/identification/BasicGroupFactory" for BasicGroupFactory
import "../../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener" for GroupLayerManagerListener
import "../../../../../../org/allbinary/game/layer/weapon/WeaponLayer" for WeaponLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../java/lang/Integer" for Integer
import "./BasePatrolAI" for BasePatrolAI

