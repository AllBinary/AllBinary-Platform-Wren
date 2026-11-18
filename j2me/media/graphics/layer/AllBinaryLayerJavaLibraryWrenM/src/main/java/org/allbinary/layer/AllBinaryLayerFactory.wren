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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR

class AllBinaryLayerFactory is JObject {
  rectangle { _rectangle }
  rectangle=(value) { _rectangle = value }

  initFields_AllBinaryLayerFactory() {
    _rectangle = null
        
  }
    

    construct new(rectangle) {
    super()
    initFields_AllBinaryLayerFactory()
        _rectangle = rectangle
    }
    

    getInstance() {
        return AllBinaryLayer.new(StringUtil.getInstance().EMPTY_STRING, _rectangle, ViewPosition.getInstanceD())
    }
}

import "../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/view/ViewPosition" for ViewPosition
import "./AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface
import "./AllBinaryLayer" for AllBinaryLayer

