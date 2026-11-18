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

class LifeLayerFactory is JObject {

  initFields_LifeLayerFactory() {
  }

  construct new() {
    super()
    initFields_LifeLayerFactory()
  }
    

    getInstance() {
        return LifeLayer.new()
    }
}

import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "./LifeLayer" for LifeLayer

