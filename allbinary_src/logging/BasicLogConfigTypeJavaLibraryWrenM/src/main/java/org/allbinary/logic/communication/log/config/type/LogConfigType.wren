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
// package org.allbinary.logic.communication.log.config.type

import "../../../../../../../allbinary_java" for JObject, JException, JR

class LogConfigType is JObject {
  name { _name }
  name=(value) { _name = value }
  description { _description }
  description=(value) { _description = value }

  initFields_LogConfigType() {
    _name = null
    _description = null
        
        
  }
    

    construct new(name, description) {
    super()
    initFields_LogConfigType()
        _name = name
        _description = description
    }
    

    getName() {
        return _name
    }
    

    getDescription() {
        return _description
    }
    

    setName(value) {
        _name = value
    }
    

    setDescription(value) {
        _description = value
    }
}


