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
// package org.allbinary.logic.util.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/cache/BaseCircularPool" for BaseCircularPool

class AllBinaryEventCircularPool is BaseCircularPool {

  initFields_AllBinaryEventCircularPool() {
  }
    

    construct new(max) {
    super()
    initFields_AllBinaryEventCircularPool()
        this.OBJECT_ARRAY = List.filled(max, null)
        this.circularIndexUtil = CircularIndexUtil.createInstance(max)
    }
    

    initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface) {
        this.circularIndexUtil.setIndex(0)
        var size = this.circularIndexUtil.getSize()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            this.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance()
            }
        }
    }
}

import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./AllBinaryEventObjectFactoryInterface" for AllBinaryEventObjectFactoryInterface

