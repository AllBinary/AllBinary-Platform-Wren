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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class LayerPlacementType is JObject {
  type { _type }
  type=(value) { _type = value }

  initFields_LayerPlacementType() {
    _type = 0
        
  }
    

    construct new(type) {
    super()
    initFields_LayerPlacementType()
        _type = type
    }
    

    getType() {
        return _type
    }
    

    setType(type) {
        _type = type
    }
}


