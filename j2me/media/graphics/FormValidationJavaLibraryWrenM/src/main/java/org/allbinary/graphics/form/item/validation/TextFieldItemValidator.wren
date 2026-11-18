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
// package org.allbinary.graphics.form.item.validation

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/logic/control/validate/ValidatorBase" for ValidatorBase

class TextFieldItemValidator is ValidatorBase {
  textFieldItem { _textFieldItem }
  textFieldItem=(value) { _textFieldItem = value }
  min { _min }
  min=(value) { _min = value }
  max { _max }
  max=(value) { _max = value }
  allowOnEmpty { _allowOnEmpty }
  allowOnEmpty=(value) { _allowOnEmpty = value }

  initFields_TextFieldItemValidator() {
    _textFieldItem = null
    _min = 0
    _max = 0
    _allowOnEmpty = false
        
        
        
        
  }
    

    construct new(textFieldItem, min, max, allowOnEmpty) {
    super()
    initFields_TextFieldItemValidator()
        _textFieldItem = textFieldItem
        _min = min
        _max = max
        _allowOnEmpty = allowOnEmpty
    }
    

    isValid() {
        var booleanFactory = BooleanFactory.getInstance()
        var result = booleanFactory.TRUE
        var string = _textFieldItem.getString()
        var textLength = JR.length(string)
        if (((((textLength == 0) && _allowOnEmpty)) || ((textLength > _min) && (textLength < _max)))) {
        } else {
            if ((textLength < _min)) {
                result = booleanFactory.FALSE
            } else if ((textLength > _max)) {
                result = booleanFactory.FALSE
            }
        }
        return result
    }
    

    toList() {
        var list = BasicArrayListD.new()
        var string = _textFieldItem.getString()
        var textLength = JR.length(string)
        if (((textLength > _min) && (textLength < _max))) {
        } else {
            var label = _textFieldItem.getLabel()
            var name = JR.substring(label, 0, JR.i32(JR.length(label) - 2))
            if ((textLength < _min)) {
                list.add(StringMaker.new().append(name).append(" is to short").toString())
            } else if ((textLength > _max)) {
                list.add(StringMaker.new().append(name).append(" is to long").toString())
            }
        }
        return list
    }
}

import "../../../../../../org/allbinary/graphics/form/item/ABTextFieldItem" for ABTextFieldItem
import "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../../java/lang/Boolean" for Boolean

