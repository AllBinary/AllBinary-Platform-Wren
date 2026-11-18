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
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR

class FormTypeFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FormTypeFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  UNK { _UNK }
  UNK=(value) { _UNK = value }
  NULL_FORM_TYPE { _NULL_FORM_TYPE }
  NULL_FORM_TYPE=(value) { _NULL_FORM_TYPE = value }
  TEMP_HORIZONTAL_FORM { _TEMP_HORIZONTAL_FORM }
  TEMP_HORIZONTAL_FORM=(value) { _TEMP_HORIZONTAL_FORM = value }
  HORIZONTAL_FORM { _HORIZONTAL_FORM }
  HORIZONTAL_FORM=(value) { _HORIZONTAL_FORM = value }
  VERTICAL_CENTER_FORM { _VERTICAL_CENTER_FORM }
  VERTICAL_CENTER_FORM=(value) { _VERTICAL_CENTER_FORM = value }

  initFields_FormTypeFactory() {
    _UNK = null
    _NULL_FORM_TYPE = null
    _TEMP_HORIZONTAL_FORM = null
    _HORIZONTAL_FORM = null
    _VERTICAL_CENTER_FORM = null
        _UNK = "Unknown FormType"
        _NULL_FORM_TYPE = FormType.new(StringUtil.getInstance().NULL_STRING)
        _TEMP_HORIZONTAL_FORM = FormType.new("TempHorizontal")
        _HORIZONTAL_FORM = FormType.new("Horizontal")
        _VERTICAL_CENTER_FORM = FormType.new("Vertical")
  }

  construct new() {
    super()
    initFields_FormTypeFactory()
  }
    

    static getInstance() {
        return FormTypeFactory.instance
    }
    

    getFormType() {
        var displayInfo = DisplayInfoSingleton.getInstance()
        var formType = null
        if (displayInfo.isPortrait()) {
            formType = _VERTICAL_CENTER_FORM
        } else {
            formType = _HORIZONTAL_FORM
        }
        return formType
    }
}

import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./FormType" for FormType

