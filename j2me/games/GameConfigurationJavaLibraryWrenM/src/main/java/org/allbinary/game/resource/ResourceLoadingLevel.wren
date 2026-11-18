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
// package org.allbinary.game.resource

import "../../../../allbinary_java" for JObject, JException, JR

class ResourceLoadingLevel is JObject {
  name { _name }
  name=(value) { _name = value }
  level { _level }
  level=(value) { _level = value }

  initFields_ResourceLoadingLevel() {
    _name = null
    _level = 0
        
        
  }
    

    construct new(name, level) {
    super()
    initFields_ResourceLoadingLevel()
        _name = name
        _level = level
    }
    

    getLevel() {
        return _level
    }
    

    getName() {
        return _name
    }
}


