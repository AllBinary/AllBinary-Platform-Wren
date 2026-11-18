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

class AllCommandsVisitor is Visitor {

  initFields_AllCommandsVisitor() {
  }
    

    construct new() {
    super()
    initFields_AllCommandsVisitor()
    }
    

    visit(anyType) {
        return BooleanFactory.getInstance().TRUE
    }
}

import "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" for BooleanFactory

