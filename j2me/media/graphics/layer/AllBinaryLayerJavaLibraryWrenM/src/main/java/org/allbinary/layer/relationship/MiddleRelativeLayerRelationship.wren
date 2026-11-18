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
import "./RelativeLayerRelationship" for RelativeLayerRelationship

class MiddleRelativeLayerRelationship is RelativeLayerRelationship {

  initFields_MiddleRelativeLayerRelationship() {
  }
    

    construct new(layer) {
        super(layer, PointFactory.getInstance().createXY(layer.getHalfWidth(), layer.getHalfHeight()), BasicArrayListUtil.getInstance().getImmutableInstance())
    }
}

import "../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

