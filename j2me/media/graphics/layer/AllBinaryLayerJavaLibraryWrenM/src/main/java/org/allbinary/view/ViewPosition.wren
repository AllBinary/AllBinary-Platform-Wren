/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
import "./ViewPositionBase" for ViewPositionBase

class ViewPosition is ViewPositionBase {
  allbinaryLayer { _allbinaryLayer }
  allbinaryLayer=(value) { _allbinaryLayer = value }

  initFields_ViewPosition() {
    _allbinaryLayer = null
        _allbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER
  }
    

    static getInstanceD() {
        return ViewPosition.new(0, 0, 0)
    }
    

    construct new(x, y, z) {
        super(x, y, z)
        initFields_ViewPosition()
    }
    

    getX() {
        return _allbinaryLayer.getXP()
    }
    

    getY() {
        return _allbinaryLayer.getYP()
    }
    

    getZ() {
        return _allbinaryLayer.getZP()
    }
    

    getX2() {
        return (this.getX() + _allbinaryLayer.getWidth())
    }
    

    getY2() {
        return (this.getY() + _allbinaryLayer.getHeight())
    }
    

    getZ2() {
        return JR.i32(((this.getZ() + _allbinaryLayer.getDepth())))
    }
    

    setAllbinaryLayer(allbinaryLayer) {
        _allbinaryLayer = allbinaryLayer
    }
}

import "../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

