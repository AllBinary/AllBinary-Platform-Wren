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
// package org.allbinary.view

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/graphics/GPoint" for GPoint

class ViewPositionBase is GPoint {
    static NULL_VIEW_POSITION {
    if (__NULL_VIEW_POSITION_set == null) {
      __NULL_VIEW_POSITION_set = true
      __NULL_VIEW_POSITION = ViewPositionBase.new(0, 0, 0)
    }
    return __NULL_VIEW_POSITION
  }
  static NULL_VIEW_POSITION=(value) {
    __NULL_VIEW_POSITION_set = true
    __NULL_VIEW_POSITION = value
  }

  initFields_ViewPositionBase() {
  }
    

    construct new(x, y, z) {
        super(x, y, z)
    }
    

    getX2() {
        return this.getX()
    }
    

    getY2() {
        return this.getY()
    }
    

    getZ2() {
        return this.getZ()
    }
    

    setAllbinaryLayer(allbinaryLayer) {
    }
}


