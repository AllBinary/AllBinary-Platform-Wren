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
// package org.allbinary.game.gd.resource

import "../../../../../allbinary_java" for JObject, JException, JR

class GDResources is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GDResources.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  resourceStringArray { _resourceStringArray }
  resourceStringArray=(value) { _resourceStringArray = value }
  currentLayoutRequiredTotal { _currentLayoutRequiredTotal }
  currentLayoutRequiredTotal=(value) { _currentLayoutRequiredTotal = value }

  initFields_GDResources() {
    _resourceStringArray = null
    _currentLayoutRequiredTotal = 0
        _resourceStringArray = []
        _currentLayoutRequiredTotal = 0
  }

  construct new() {
    super()
    initFields_GDResources()
  }
    

    static getInstance() {
        return GDResources.instance
    }
}


