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
// package org.allbinary.game.ag.layer.pickup.life

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/layer/AllBinaryLayerCircularPool" for AllBinaryLayerCircularPool

class LifeLayerCircularStaticPool is AllBinaryLayerCircularPool {

  initFields_LifeLayerCircularStaticPool() {
  }
    

    construct new(allbinaryLayerFactoryInterface, total) {
    super()
    initFields_LifeLayerCircularStaticPool()
        super.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
    }
    

    visit(sourceLayerInterface) {
        var lifeLayer = this.getNextInstance()
        var lifeInterfaceCompositeInterface = sourceLayerInterface
        var lifeInterface = lifeInterfaceCompositeInterface.getLifeInterface()
        lifeLayer.visit(lifeInterface)
    }
}

import "../../../../../../../org/allbinary/game/ag/life/Life" for Life
import "../../../../../../../org/allbinary/game/ag/life/LifeInterfaceCompositeInterface" for LifeInterfaceCompositeInterface
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "./LifeLayer" for LifeLayer

