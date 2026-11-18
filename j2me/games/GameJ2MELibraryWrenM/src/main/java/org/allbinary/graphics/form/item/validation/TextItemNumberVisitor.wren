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
import "../../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor

class TextItemNumberVisitor is Visitor {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_TextItemNumberVisitor() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_TextItemNumberVisitor()
    }
    

    visit(anyType) {
        var value = anyType
        if ((JR.length(value) < 2)) {
            var stringValidationUtil = StringValidationUtil.getInstance()
            if (stringValidationUtil.isNumber(value)) {
                return BooleanFactory.getInstance().TRUE
            } else {
                var jerror0 = Fiber.new {
                    TextNotificationUtil.getInstance().fireError("Numbers Only")
                }.try()
                if (jerror0 != null) {
                    var e = jerror0
                    var commonStrings = CommonStrings.getInstance()
                    _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
                }
                return BooleanFactory.getInstance().FALSE
            }
        } else {
            return BooleanFactory.getInstance().FALSE
        }
    }
}

import "../../../../../../org/allbinary/game/input/TextNotificationUtil" for TextNotificationUtil
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../../org/allbinary/logic/string/StringValidationUtil" for StringValidationUtil
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

