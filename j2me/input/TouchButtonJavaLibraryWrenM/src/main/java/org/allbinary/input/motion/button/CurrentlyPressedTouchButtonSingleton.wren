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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class CurrentlyPressedTouchButtonSingleton is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CurrentlyPressedTouchButtonSingleton.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_CurrentlyPressedTouchButtonSingleton() {
    _list = null
        _list = BasicArrayListD.new()
  }
    

    static getInstance() {
        return CurrentlyPressedTouchButtonSingleton.instance
    }
    

    construct new() {
    super()
    initFields_CurrentlyPressedTouchButtonSingleton()
    }
    

    size() {
        return _list.size()
    }
    

    removeAt(index) {
        return _list.removeAt(index)
    }
    

    remove(touchButtonInput) {
        return _list.remove(touchButtonInput)
    }
    

    get(index) {
        return _list.objectArray[index]
    }
    

    contains(touchButtonInput) {
        return _list.contains(touchButtonInput)
    }
    

    add(touchButtonInput) {
        _list.add(touchButtonInput)
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./TouchButtonInput" for TouchButtonInput

