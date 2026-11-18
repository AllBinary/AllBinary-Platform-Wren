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

class FormType is JObject {
  name { _name }
  name=(value) { _name = value }

  initFields_FormType() {
    _name = null
        
  }
    

    construct new(name) {
    super()
    initFields_FormType()
        _name = name
    }
    

    toString() {
        return _name
    }
}


