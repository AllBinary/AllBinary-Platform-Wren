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
import "../../../org/allbinary/logic/util/cache/BaseCircularPool" for BaseCircularPool

class AllBinaryLayerCircularPool is BaseCircularPool {

  initFields_AllBinaryLayerCircularPool() {
  }
    

    construct new() {
    super()
    initFields_AllBinaryLayerCircularPool()
    }
    

    initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total) {
        this.circularIndexUtil = CircularIndexUtil.createInstance(total)
        this.OBJECT_ARRAY = List.filled(total, null)
        if (true) {
            var localIndex = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    localIndex = JR.i32(localIndex + 1)
                }
                jfirst = false
                if (!((localIndex < total))) break
            this.OBJECT_ARRAY[localIndex] = allbinaryLayerFactoryInterface.getInstance()
            }
        }
    }
}

import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./AllBinaryLayerFactoryInterface" for AllBinaryLayerFactoryInterface

