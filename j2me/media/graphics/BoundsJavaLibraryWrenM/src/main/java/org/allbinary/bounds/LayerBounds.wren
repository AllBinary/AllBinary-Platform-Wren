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
// package org.allbinary.bounds

import "../../../allbinary_java" for JObject, JException, JR

class LayerBounds is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  rectangle { _rectangle }
  rectangle=(value) { _rectangle = value }

  initFields_LayerBounds() {
    _logUtil = null
    _rectangle = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(rectangle) {
    super()
    initFields_LayerBounds()
        _rectangle = rectangle
    }
    

    getRectangleP() {
        return _rectangle
    }
    

    visit(boundsVisitorInterface) {
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onBoundsChangeEvent(boundsChangeEvent) {
        _rectangle = boundsChangeEvent.getRectangle()
    }
}

import "../../../org/allbinary/bounds/event/BoundsChangeEvent" for BoundsChangeEvent
import "../../../org/allbinary/bounds/event/BoundsChangeEventListener" for BoundsChangeEventListener
import "../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "./BoundsVisitorInterface" for BoundsVisitorInterface

