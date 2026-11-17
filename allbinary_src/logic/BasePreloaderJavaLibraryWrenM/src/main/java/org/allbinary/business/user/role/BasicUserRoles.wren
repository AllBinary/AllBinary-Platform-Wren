/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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

class BasicUserRoles is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicUserRoles.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  roleVector { _roleVector }
  roleVector=(value) { _roleVector = value }

  initFields_BasicUserRoles() {
    _roleVector = null
        _roleVector = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_BasicUserRoles()
  }
    

    static getInstance() {
        return BasicUserRoles.instance
    }
    

    getRole(role) {
        var roleVector = this.getAll()
        var size = roleVector.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var userRole = roleVector.get(index)
            if ((JR.compareTo(role, userRole.toString()) == 0)) {
                return userRole
            }
            }
        }
        Fiber.abort(JR.exception("Exception", "Unable to get role - Unknown Role"))
    }
    

    getAll() {
        return _roleVector
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./BasicUserRole" for BasicUserRole

