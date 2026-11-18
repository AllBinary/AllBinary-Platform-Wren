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
// package org.allbinary.game

import "../../../allbinary_java" for JObject, JException, JR

class Intermission is JObject {
  enabled { _enabled }
  enabled=(value) { _enabled = value }
  timeElapsedHelper { _timeElapsedHelper }
  timeElapsedHelper=(value) { _timeElapsedHelper = value }
  intermissionEnableListener { _intermissionEnableListener }
  intermissionEnableListener=(value) { _intermissionEnableListener = value }

  initFields_Intermission() {
    _enabled = false
    _timeElapsedHelper = null
    _intermissionEnableListener = null
        _enabled = false
        _timeElapsedHelper = TimeDelayHelper.new(0)
        _intermissionEnableListener = NullIntermissionEnableListener.getInstance()
  }
    

    construct new() {
    super()
    initFields_Intermission()
    }
    

    setListener(enableListener) {
        _intermissionEnableListener = enableListener
    }
    

    getTimeDelayHelper() {
        return _timeElapsedHelper
    }
    

    setEnabled(enabled) {
        _enabled = enabled
        if (this.isEnabled()) {
            this.getTimeDelayHelper().setStartTimeTNT()
        }
        _intermissionEnableListener.notifyIntermission(enabled)
    }
    

    isEnabled() {
        return _enabled
    }
}

import "../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "./IntermissionInterface" for IntermissionInterface
import "./NullIntermissionEnableListener" for NullIntermissionEnableListener
import "./IntermissionEnableListenerInterface" for IntermissionEnableListenerInterface

