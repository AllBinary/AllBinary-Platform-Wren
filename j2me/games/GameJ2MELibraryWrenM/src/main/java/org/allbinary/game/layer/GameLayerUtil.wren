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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class GameLayerUtil is JObject {

  initFields_GameLayerUtil() {
  }
    

    construct new() {
    super()
    initFields_GameLayerUtil()
    }
    

    static isOnScreen(layer) {
        var displayInfo = DisplayInfoSingleton.getInstance()
        var viewPosition = layer.getViewPosition()
        return GameLayerUtil.isInside(viewPosition.getX(), viewPosition.getY(), viewPosition.getX2(), viewPosition.getY2(), 0, 0, displayInfo.getLastWidth(), displayInfo.getLastHeight())
    }
    

    static isInside(rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2) {
        if (((((rectX1 > rect2X1) && (rectX2 < rect2X2)) && (rectY1 > rect2Y1)) && (rectY2 < rect2Y2))) {
            return true
        } else {
            return false
        }
    }
}

import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase

