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
// package org.allbinary.logic.math.permutations

import "../../../../../allbinary_java" for JObject, JException, JR

class OrderedIntArrayPermutationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OrderedIntArrayPermutationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  TOTAL_ITERATIONS_TABLE { _TOTAL_ITERATIONS_TABLE }
  TOTAL_ITERATIONS_TABLE=(value) { _TOTAL_ITERATIONS_TABLE = value }
  FINISHED { _FINISHED }
  FINISHED=(value) { _FINISHED = value }

  initFields_OrderedIntArrayPermutationUtil() {
    _TOTAL_ITERATIONS_TABLE = null
    _FINISHED = null
        _TOTAL_ITERATIONS_TABLE = "Total Iterations: "
        _FINISHED = "\nFINISHED"
  }
    

    static getInstance() {
        return OrderedIntArrayPermutationUtil.instance
    }
    

    construct new() {
    super()
    initFields_OrderedIntArrayPermutationUtil()
    }
    

    getNext(data) {
        var length = data.count
        var i = JR.i32(length - 1)
        while ((data[JR.i32(i - 1)] >= data[i])) {
            i = JR.i32(i - 1)
        }
        var j = length
        while ((data[JR.i32(j - 1)] <= data[JR.i32(i - 1)])) {
            j = JR.i32(j - 1)
        }
        this.swap(data, JR.i32(i - 1), JR.i32(j - 1))
        i = JR.i32(i + 1)
        j = length
        while ((i < j)) {
            this.swap(data, JR.i32(i - 1), JR.i32(j - 1))
            i = JR.i32(i + 1)
            j = JR.i32(j - 1)
        }
    }
    

    swap(data, a, b) {
        var temp = data[a]
        data[a] = data[b]
        data[b] = temp
    }
    

    factorial(dataLength) {
        var temp = 1
        if ((dataLength > 1)) {
            if (true) {
                var i = 1
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        i = JR.i32(i + 1)
                    }
                    jfirst = false
                    if (!((i <= dataLength))) break
                temp = JR.i32(temp * i)
                }
            }
        }
        return temp
    }
    

    generate(data, visitor) {
        var iterations = this.factorial(data.count)
        System.print(_TOTAL_ITERATIONS_TABLE)
        System.print(JR.str(iterations))
        if (true) {
            var count = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    count = JR.i32(count + 1)
                }
                jfirst = false
                if (!((count < JR.i32(iterations - 1)))) break
            this.getNext(data)
            visitor.visit(this)
            }
        }
        System.print(_FINISHED)
    }
    

    static main(args) {
        var TOTAL = 3
        var data = List.filled(TOTAL, 0)
        if (true) {
            var i = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i + 1)
                }
                jfirst = false
                if (!((i < TOTAL))) break
            data[i] = i
            }
        }
        var permutationVisitor = IntPermutationVisitor.new(data)
        var ORIGINAL_DATA_LABEL = "Original Data: "
        System.print(ORIGINAL_DATA_LABEL)
        permutationVisitor.print(data, StringMaker.new())
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor)
    }
}

import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../java/lang/System" for JSystem
import "./IntPermutationVisitor" for IntPermutationVisitor

