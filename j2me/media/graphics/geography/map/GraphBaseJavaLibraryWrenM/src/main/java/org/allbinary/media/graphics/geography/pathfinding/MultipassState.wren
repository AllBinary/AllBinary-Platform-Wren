/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.graphics.geography.pathfinding

import "../../../../../../allbinary_java" for JObject, JException, JR

class MultipassState is JObject {
  step { _step }
  step=(value) { _step = value }
  iteration { _iteration }
  iteration=(value) { _iteration = value }
  iteration2 { _iteration2 }
  iteration2=(value) { _iteration2 = value }

  initFields_MultipassState() {
    _step = 0
    _iteration = 0
    _iteration2 = 0
        _step = 0
        _iteration = 0
        _iteration2 = 0
  }

  construct new() {
    super()
    initFields_MultipassState()
  }
}


