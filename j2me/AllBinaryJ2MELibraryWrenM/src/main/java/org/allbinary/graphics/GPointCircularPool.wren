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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/logic/util/cache/BaseCircularPool" for BaseCircularPool

class GPointCircularPool is BaseCircularPool {

  initFields_GPointCircularPool() {
  }
    

    construct new(size) {
    super()
    initFields_GPointCircularPool()
        this.circularIndexUtil = CircularIndexUtil.createInstance(size)
        this.OBJECT_ARRAY = List.filled(size, null)
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            this.OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0)
            }
        }
    }
}

import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./CustomGPoint" for CustomGPoint

