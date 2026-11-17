/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.math

import "../../../allbinary_java" for JObject, JException, JR
import "./Angle" for Angle

class NamedAngle is Angle {
  name { _name }
  name=(value) { _name = value }

  initFields_NamedAngle() {
    _name = null
        
  }
    

    construct new(angle, name) {
        super(angle)
        initFields_NamedAngle()
        _name = name
    }
}


