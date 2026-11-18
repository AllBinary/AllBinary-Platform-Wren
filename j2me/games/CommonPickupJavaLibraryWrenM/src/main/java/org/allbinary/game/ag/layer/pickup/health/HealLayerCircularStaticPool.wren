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
// package org.allbinary.game.ag.layer.pickup.health

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/layer/AllBinaryLayerCircularPool" for AllBinaryLayerCircularPool

class HealLayerCircularStaticPool is AllBinaryLayerCircularPool {

  initFields_HealLayerCircularStaticPool() {
  }
    

    construct new(allbinaryLayerFactoryInterface, total) {
    super()
    initFields_HealLayerCircularStaticPool()
        super.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
    }
    

    visit(sourceLayerInterface) {
        var healLayer = this.getNextInstance()
        var healthInterfaceCompositeInterface = sourceLayerInterface
        var healthInterface = healthInterfaceCompositeInterface.getHealthInterface()
        healLayer.visit(healthInterface)
    }
}

import "../../../../../../../org/allbinary/game/health/HealthInterface" for HealthInterface
import "../../../../../../../org/allbinary/game/health/HealthInterfaceCompositeInterface" for HealthInterfaceCompositeInterface
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "./HealLayer" for HealLayer

