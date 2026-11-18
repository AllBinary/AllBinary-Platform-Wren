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
// package org.allbinary.game.ag.layer.pickup.points

import "../../../../../../../allbinary_java" for JObject, JException, JR

class PointsLayerFactory is JObject {
  points { _points }
  points=(value) { _points = value }

  initFields_PointsLayerFactory() {
    _points = 0
        
  }
    

    construct new(points) {
    super()
    initFields_PointsLayerFactory()
        _points = points
    }
    

    getInstance() {
        return PointsLayer.new(_points)
    }
}

import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "./PointsLayer" for PointsLayer

