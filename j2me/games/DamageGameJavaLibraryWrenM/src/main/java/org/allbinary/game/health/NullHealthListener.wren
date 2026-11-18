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
// package org.allbinary.game.health

import "../../../../allbinary_java" for JObject, JException, JR

class NullHealthListener is JObject {
    static NULL_HEALTH_LISTENER {
    if (__NULL_HEALTH_LISTENER_set == null) {
      __NULL_HEALTH_LISTENER_set = true
      __NULL_HEALTH_LISTENER = NullHealthListener.new()
    }
    return __NULL_HEALTH_LISTENER
  }
  static NULL_HEALTH_LISTENER=(value) {
    __NULL_HEALTH_LISTENER_set = true
    __NULL_HEALTH_LISTENER = value
  }

  initFields_NullHealthListener() {
  }

  construct new() {
    super()
    initFields_NullHealthListener()
  }
    

    onHealthChange() {
    }
}

import "./HealthListenerInterface" for HealthListenerInterface

