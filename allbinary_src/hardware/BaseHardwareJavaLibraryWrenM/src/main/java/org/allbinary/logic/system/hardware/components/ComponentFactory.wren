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
// package org.allbinary.logic.system.hardware.components

import "../../../../../../allbinary_java" for JObject, JException, JR

class ComponentFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ComponentFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  VGA { _VGA }
  VGA=(value) { _VGA = value }
  IDE { _IDE }
  IDE=(value) { _IDE = value }
  SCSI { _SCSI }
  SCSI=(value) { _SCSI = value }
  BRIDGE { _BRIDGE }
  BRIDGE=(value) { _BRIDGE = value }
  ETHERNET { _ETHERNET }
  ETHERNET=(value) { _ETHERNET = value }
  USB { _USB }
  USB=(value) { _USB = value }
  MULTIMEDIA { _MULTIMEDIA }
  MULTIMEDIA=(value) { _MULTIMEDIA = value }
  PCI { _PCI }
  PCI=(value) { _PCI = value }
  RAID { _RAID }
  RAID=(value) { _RAID = value }
  SMBUS { _SMBUS }
  SMBUS=(value) { _SMBUS = value }
  PIC { _PIC }
  PIC=(value) { _PIC = value }
  Class { _Class }
  Class=(value) { _Class = value }
  UNKNOWN { _UNKNOWN }
  UNKNOWN=(value) { _UNKNOWN = value }

  initFields_ComponentFactory() {
    _VGA = null
    _IDE = null
    _SCSI = null
    _BRIDGE = null
    _ETHERNET = null
    _USB = null
    _MULTIMEDIA = null
    _PCI = null
    _RAID = null
    _SMBUS = null
    _PIC = null
    _Class = null
    _UNKNOWN = null
        _VGA = Component.new("VGA")
        _IDE = Component.new("IDE")
        _SCSI = Component.new("SCSI")
        _BRIDGE = Component.new("bridge")
        _ETHERNET = Component.new("Ethernet")
        _USB = Component.new("USB")
        _MULTIMEDIA = Component.new("Multimedia")
        _PCI = Component.new("PCI")
        _RAID = Component.new("RAID")
        _SMBUS = Component.new("SMBus")
        _PIC = Component.new("PIC")
        _Class = Component.new("Class")
        _UNKNOWN = Component.new(CommonStrings.getInstance().UNKNOWN)
  }

  construct new() {
    super()
    initFields_ComponentFactory()
  }
    

    static getInstance() {
        return ComponentFactory.instance
    }
}

import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./Component" for Component

