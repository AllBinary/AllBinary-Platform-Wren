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
// package org.allbinary.business.user.role

import "../../../../../allbinary_java" for JObject, JException, JR

class StoreRoleFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = StoreRoleFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  roles { _roles }
  roles=(value) { _roles = value }
  subscriberRoles { _subscriberRoles }
  subscriberRoles=(value) { _subscriberRoles = value }
  wholesaleRoles { _wholesaleRoles }
  wholesaleRoles=(value) { _wholesaleRoles = value }

  initFields_StoreRoleFactory() {
    _roles = null
    _subscriberRoles = null
    _wholesaleRoles = null
        _roles = BasicArrayListD.new()
        _subscriberRoles = BasicArrayListD.new()
        _wholesaleRoles = BasicArrayListD.new()
  }
    

    static getInstance() {
        return StoreRoleFactory.instance
    }
    

    construct new() {
    super()
    initFields_StoreRoleFactory()
        var basicUserRoleFactory = BasicUserRoleFactory.getInstance()
        _roles.add(basicUserRoleFactory.CUSTOMER)
        _roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        _roles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
        _subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        _wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
    }
    

    getRoles() {
        return _roles
    }
    

    getSubscriberRoles() {
        return _subscriberRoles
    }
    

    getWholesaleRoles() {
        return _wholesaleRoles
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./BasicUserRoleFactory" for BasicUserRoleFactory

