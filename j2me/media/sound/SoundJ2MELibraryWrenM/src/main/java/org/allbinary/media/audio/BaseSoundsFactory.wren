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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR

class BaseSoundsFactory is JObject {
  initialized { _initialized }
  initialized=(value) { _initialized = value }

  initFields_BaseSoundsFactory() {
    _initialized = false
        _initialized = false
  }

  construct new() {
    super()
    initFields_BaseSoundsFactory()
  }
    

    init() {
    }
    

    getSoundInterfaceArray() {
        return List.filled(0, null)
    }
    

    setInitialized(initialized) {
        _initialized = initialized
    }
    

    isInitialized() {
        return _initialized
    }
}

import "./SoundsFactoryInterface" for SoundsFactoryInterface
import "./Sound" for Sound

