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
// package org.allbinary.game.ag.layer.weapon.mine

import "../../../../../../../allbinary_java" for JObject, JException, JR

class MineLayerFactory is JObject {
  viewPositionFactoryInterface { _viewPositionFactoryInterface }
  viewPositionFactoryInterface=(value) { _viewPositionFactoryInterface = value }

  initFields_MineLayerFactory() {
    _viewPositionFactoryInterface = null
        
  }
    

    construct new(viewPositionFactoryInterface) {
    super()
    initFields_MineLayerFactory()
        _viewPositionFactoryInterface = viewPositionFactoryInterface
    }
    

    getInstance() {
        return MineLayer.new(_viewPositionFactoryInterface.getInstance())
    }
}

import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "../../../../../../../org/allbinary/view/ViewPositionFactoryInterface" for ViewPositionFactoryInterface
import "./MineLayer" for MineLayer

