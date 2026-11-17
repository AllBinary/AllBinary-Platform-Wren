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
// package org.allbinary.string

import "../../../allbinary_java" for JObject, JException, JR

class CommonLabels is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommonLabels.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  WIDTH_LABEL { _WIDTH_LABEL }
  WIDTH_LABEL=(value) { _WIDTH_LABEL = value }
  HEIGHT_LABEL { _HEIGHT_LABEL }
  HEIGHT_LABEL=(value) { _HEIGHT_LABEL = value }
  END_LABEL { _END_LABEL }
  END_LABEL=(value) { _END_LABEL = value }
  TOTAL_LABEL { _TOTAL_LABEL }
  TOTAL_LABEL=(value) { _TOTAL_LABEL = value }
  INDEX_LABEL { _INDEX_LABEL }
  INDEX_LABEL=(value) { _INDEX_LABEL = value }
  START_LABEL { _START_LABEL }
  START_LABEL=(value) { _START_LABEL = value }
  COMMAND_LABEL { _COMMAND_LABEL }
  COMMAND_LABEL=(value) { _COMMAND_LABEL = value }
  NAME_LABEL { _NAME_LABEL }
  NAME_LABEL=(value) { _NAME_LABEL = value }
  START { _START }
  START=(value) { _START = value }
  ELAPSED { _ELAPSED }
  ELAPSED=(value) { _ELAPSED = value }
  CURRENT { _CURRENT }
  CURRENT=(value) { _CURRENT = value }
  NEXT { _NEXT }
  NEXT=(value) { _NEXT = value }
  ITEM_LABEL { _ITEM_LABEL }
  ITEM_LABEL=(value) { _ITEM_LABEL = value }
  RESULT_ { _RESULT_ }
  RESULT_=(value) { _RESULT_ = value }
  COLON_SEP { _COLON_SEP }
  COLON_SEP=(value) { _COLON_SEP = value }

  initFields_CommonLabels() {
    _WIDTH_LABEL = null
    _HEIGHT_LABEL = null
    _END_LABEL = null
    _TOTAL_LABEL = null
    _INDEX_LABEL = null
    _START_LABEL = null
    _COMMAND_LABEL = null
    _NAME_LABEL = null
    _START = null
    _ELAPSED = null
    _CURRENT = null
    _NEXT = null
    _ITEM_LABEL = null
    _RESULT_ = null
    _COLON_SEP = null
        _WIDTH_LABEL = " Width: "
        _HEIGHT_LABEL = " Height: "
        _END_LABEL = "End: "
        _TOTAL_LABEL = "Total: "
        _INDEX_LABEL = "index: "
        _START_LABEL = "Start: "
        _COMMAND_LABEL = "Command: "
        _NAME_LABEL = "Name: "
        _START = _START_LABEL
        _ELAPSED = " Elapsed: "
        _CURRENT = " Current: "
        _NEXT = "Next"
        _ITEM_LABEL = "Item: "
        _RESULT_ = "Result: "
        _COLON_SEP = ": "
  }

  construct new() {
    super()
    initFields_CommonLabels()
  }
    

    static getInstance() {
        return CommonLabels.instance
    }
}


