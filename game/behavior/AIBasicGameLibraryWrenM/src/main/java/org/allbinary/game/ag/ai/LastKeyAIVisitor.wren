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
// package org.allbinary.game.ag.ai

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor

class LastKeyAIVisitor is Visitor {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  TRUE { _TRUE }
  TRUE=(value) { _TRUE = value }

  initFields_LastKeyAIVisitor() {
    _logUtil = null
    _TRUE = null
        _logUtil = LogUtil.getInstance()
        _TRUE = BooleanFactory.getInstance().TRUE
  }
    

    construct new() {
    super()
    initFields_LastKeyAIVisitor()
    }
    

    visit(anyType) {
        var jerror0 = Fiber.new {
            var basicAI = anyType
            var key = basicAI.getLastKey()
            if ((key != -1)) {
                basicAI.processKeyAI(key)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
        }
        return _TRUE
    }
}

import "../../../../../org/allbinary/game/ai/BasicAI" for BasicAI
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../java/lang/Boolean" for Boolean

