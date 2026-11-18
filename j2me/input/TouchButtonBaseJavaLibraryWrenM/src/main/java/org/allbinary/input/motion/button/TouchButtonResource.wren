/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class TouchButtonResource is JObject {
  RESOURCE { _RESOURCE }
  RESOURCE=(value) { _RESOURCE = value }
  HINT { _HINT }
  HINT=(value) { _HINT = value }

  initFields_TouchButtonResource() {
    _RESOURCE = null
    _HINT = null
        
        
  }
    

    construct new(resource, hint) {
    super()
    initFields_TouchButtonResource()
        _RESOURCE = resource
        _HINT = hint
    }
}


