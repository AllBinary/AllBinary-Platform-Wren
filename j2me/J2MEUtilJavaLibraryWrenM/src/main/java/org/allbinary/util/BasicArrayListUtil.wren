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
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR

class BasicArrayListUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicArrayListUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NULL_ARRAY_OF_ARRAY { _NULL_ARRAY_OF_ARRAY }
  NULL_ARRAY_OF_ARRAY=(value) { _NULL_ARRAY_OF_ARRAY = value }
  myRandomFactory { _myRandomFactory }
  myRandomFactory=(value) { _myRandomFactory = value }
  immutableInstance { _immutableInstance }
  immutableInstance=(value) { _immutableInstance = value }

  initFields_BasicArrayListUtil() {
    _NULL_ARRAY_OF_ARRAY = null
    _myRandomFactory = null
    _immutableInstance = null
        _NULL_ARRAY_OF_ARRAY = JR.listOf(0, Fn.new { List.filled(0, null) })
        _myRandomFactory = MyRandomFactory.getInstance()
        _immutableInstance = ImmutableBasicArrayList.new("Immutable", 0)
  }

  construct new() {
    super()
    initFields_BasicArrayListUtil()
  }
    

    static getInstance() {
        return BasicArrayListUtil.instance
    }
    

    getRandom(list) {
        var i_random = this.getRandomIndex(list)
        return list.objectArray[i_random]
    }
    

    getRandomIndex(list) {
        return _myRandomFactory.getAbsoluteNextInt(list.size())
    }
    

    reverse(list) {
        var lastMinusOneIndex = JR.i32(list.size() - 2)
        var temp = null
        var size = JR.idiv(lastMinusOneIndex, 2)
        var secondSwapIndex = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index <= size))) break
            secondSwapIndex = JR.i32(lastMinusOneIndex - index)
            temp = list.removeAt(index)
            list.addAt(index, list.removeAt(secondSwapIndex))
            list.addAt(JR.i32(secondSwapIndex + 1), temp)
            }
        }
    }
    

    log(list) {
        var S_LABEL = " s: "
        var size = list.size()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(size)
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var usedList = list.objectArray[index]
            stringBuffer.append(S_LABEL)
            stringBuffer.appendint(usedList.size())
            }
        }
        return stringBuffer.toString()
    }
    

    getImmutableInstance() {
        return _immutableInstance
    }
    

    static main(args) {
        var commonPhoneStrings = CommonPhoneStrings.getInstance()
        var list = BasicArrayListD.new()
        list.add(commonPhoneStrings.ONE)
        list.add(commonPhoneStrings.TWO)
        list.add(commonPhoneStrings.THREE)
        list.add(commonPhoneStrings.FOUR)
        list.add(commonPhoneStrings.FIVE)
        list.add(commonPhoneStrings.SIX)
        list.add(commonPhoneStrings.SEVEN)
        list.add(commonPhoneStrings.EIGHT)
        list.add(commonPhoneStrings.NINE)
        BasicArrayListUtil.getInstance().reverse(list)
        System.print(list.toString())
    }
}

import "../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonPhoneStrings" for CommonPhoneStrings
import "../../../java/lang/System" for JSystem
import "./BasicArrayList" for BasicArrayList
import "./ImmutableBasicArrayList" for ImmutableBasicArrayList
import "./BasicArrayListD" for BasicArrayListD

