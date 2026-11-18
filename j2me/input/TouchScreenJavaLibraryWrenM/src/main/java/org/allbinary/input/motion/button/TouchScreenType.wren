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

class TouchScreenType is JObject {
  name { _name }
  name=(value) { _name = value }

  initFields_TouchScreenType() {
    _name = null
        
  }
    

    construct new(name) {
    super()
    initFields_TouchScreenType()
        _name = name
    }
    

    getName() {
        return _name
    }
    

    toString() {
        return this.getName()
    }
}


