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

class NumberTextFieldItemValidator is ValidatorBase {
  textFieldItem { _textFieldItem }
  textFieldItem=(value) { _textFieldItem = value }
  min { _min }
  min=(value) { _min = value }
  max { _max }
  max=(value) { _max = value }
  maxChars { _maxChars }
  maxChars=(value) { _maxChars = value }

  initFields_NumberTextFieldItemValidator() {
    _textFieldItem = null
    _min = 0
    _max = 0
    _maxChars = 0
        
        
        
        
  }
    

    construct new(textFieldItem, maxChars, min, max) {
    super()
    initFields_NumberTextFieldItemValidator()
        _textFieldItem = textFieldItem
        _min = min
        _max = max
        _maxChars = maxChars
    }
    

    isNumberValid(value) {
        return BooleanFactory.getInstance().TRUE
    }
    

    toNumberVector(value) {
        return BasicArrayListD.new()
    }
    

    isValid() {
        var result = BooleanFactory.getInstance().TRUE
        var string = _textFieldItem.getString()
        var textLength = JR.length(string)
        if (((textLength > 0) && (textLength < _maxChars))) {
            var jerror0 = Fiber.new {
                Num.fromString(_textFieldItem.getString())
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                result = BooleanFactory.getInstance().FALSE
            }
        } else {
            if ((textLength < 1)) {
                result = BooleanFactory.getInstance().FALSE
            } else if ((textLength > _maxChars)) {
                result = BooleanFactory.getInstance().FALSE
            }
        }
        return result
    }
    

    toList() {
        var list = BasicArrayListD.new()
        var string = _textFieldItem.getString()
        var textLength = JR.length(string)
        var label = _textFieldItem.getLabel()
        var name = JR.substring(label, 0, JR.i32(JR.length(label) - 2))
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var stringMaker = StringMaker.new()
        if (((textLength > 0) && (textLength < _maxChars))) {
            var jerror1 = Fiber.new {
                var number = smallIntegerSingletonFactory.createInstance(Num.fromString(_textFieldItem.getString()))
                if ((number.intValue() > _min)) {
                    stringMaker.delete(0, stringMaker.length())
                    list.add(stringMaker.append(name).append(" is to small").toString())
                } else if ((number.intValue() > _max)) {
                    stringMaker.delete(0, stringMaker.length())
                    list.add(stringMaker.append(name).append(" is to large").toString())
                }
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is not a number").toString())
            }
        } else {
            if ((textLength < 1)) {
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is to short").toString())
            } else if ((textLength > _maxChars)) {
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is to long").toString())
            }
        }
        return list
    }
}

import "../../../../../../org/allbinary/graphics/form/item/ABTextFieldItem" for ABTextFieldItem
import "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../../java/lang/Integer" for Integer
import "../../../../../../java/lang/Boolean" for Boolean

