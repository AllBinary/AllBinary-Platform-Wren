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
// package org.allbinary.layer.relationship

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship

class RelativeLayerRelationship is RelativeRelationship {
  layer { _layer }
  layer=(value) { _layer = value }

  initFields_RelativeLayerRelationship() {
    _layer = null
        _layer = AllBinaryLayer.NULL_ALLBINARY_LAYER
  }
    

    construct new(layer, point, typesAllowedList) {
        super(point, typesAllowedList)
        initFields_RelativeLayerRelationship()
        _layer = layer
    }
    

    getX() {
        return (_layer.getXP() + super.getX())
    }
    

    getY() {
        return (_layer.getYP() + super.getY())
    }
    

    getZ() {
        return (_layer.getZP() + super.getZ())
    }
}

import "../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

