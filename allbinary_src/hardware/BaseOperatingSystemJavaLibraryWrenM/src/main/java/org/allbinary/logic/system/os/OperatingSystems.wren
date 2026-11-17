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
// package org.allbinary.logic.system.os

import "../../../../../allbinary_java" for JObject, JException, JR

class OperatingSystems is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OperatingSystems.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  LINUX { _LINUX }
  LINUX=(value) { _LINUX = value }
  WINDOWS { _WINDOWS }
  WINDOWS=(value) { _WINDOWS = value }
  SOLARIS { _SOLARIS }
  SOLARIS=(value) { _SOLARIS = value }
  WINDOWS2000 { _WINDOWS2000 }
  WINDOWS2000=(value) { _WINDOWS2000 = value }
  WINDOWS_NT { _WINDOWS_NT }
  WINDOWS_NT=(value) { _WINDOWS_NT = value }
  WINDOWS_10 { _WINDOWS_10 }
  WINDOWS_10=(value) { _WINDOWS_10 = value }
  WINDOWS_11 { _WINDOWS_11 }
  WINDOWS_11=(value) { _WINDOWS_11 = value }
  WINDOWS_VISTA { _WINDOWS_VISTA }
  WINDOWS_VISTA=(value) { _WINDOWS_VISTA = value }
  WINDOWS_XP { _WINDOWS_XP }
  WINDOWS_XP=(value) { _WINDOWS_XP = value }
  ANDROID { _ANDROID }
  ANDROID=(value) { _ANDROID = value }
  HARMONY { _HARMONY }
  HARMONY=(value) { _HARMONY = value }
  unknownSpecificOSAllowed { _unknownSpecificOSAllowed }
  unknownSpecificOSAllowed=(value) { _unknownSpecificOSAllowed = value }

  initFields_OperatingSystems() {
    _LINUX = null
    _WINDOWS = null
    _SOLARIS = null
    _WINDOWS2000 = null
    _WINDOWS_NT = null
    _WINDOWS_10 = null
    _WINDOWS_11 = null
    _WINDOWS_VISTA = null
    _WINDOWS_XP = null
    _ANDROID = null
    _HARMONY = null
    _unknownSpecificOSAllowed = false
        _LINUX = "Linux"
        _WINDOWS = "Windows"
        _SOLARIS = "Solaris"
        _WINDOWS2000 = "Windows 2000"
        _WINDOWS_NT = "Windows NT"
        _WINDOWS_10 = "Windows 10"
        _WINDOWS_11 = "Windows 11"
        _WINDOWS_VISTA = "Windows Vista"
        _WINDOWS_XP = "Windows XP"
        _ANDROID = _LINUX
        _HARMONY = "HarmonyOS"
        _unknownSpecificOSAllowed = true
  }
    

    construct new() {
    super()
    initFields_OperatingSystems()
    }
    

    isUnknownSpecificOSAllowed() {
        return _unknownSpecificOSAllowed
    }
    

    setUnknownSpecificOSAllowed(aUnknownSpecificOSAllowed) {
        _unknownSpecificOSAllowed = aUnknownSpecificOSAllowed
    }
    

    static getInstance() {
        return OperatingSystems.instance
    }
}


