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
// package org.allbinary.audio

import "../../../allbinary_java" for JObject, JException, JR

class AudioContentTypeData is JObject {
  name { _name }
  name=(value) { _name = value }

  initFields_AudioContentTypeData() {
    _name = null
        
  }
    

    construct new(name) {
    super()
    initFields_AudioContentTypeData()
        _name = name
    }
    

    getName() {
        return _name
    }
}


