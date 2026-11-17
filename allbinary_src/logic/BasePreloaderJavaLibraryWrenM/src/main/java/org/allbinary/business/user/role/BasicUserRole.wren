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

class BasicUserRole is JObject {
  m_int_RoleId { _m_int_RoleId }
  m_int_RoleId=(value) { _m_int_RoleId = value }
  role { _role }
  role=(value) { _role = value }
  displayValue { _displayValue }
  displayValue=(value) { _displayValue = value }
  sessionTimeout { _sessionTimeout }
  sessionTimeout=(value) { _sessionTimeout = value }
  sessionInactivityTimeout { _sessionInactivityTimeout }
  sessionInactivityTimeout=(value) { _sessionInactivityTimeout = value }

  initFields_BasicUserRole() {
    _m_int_RoleId = 0
    _role = null
    _displayValue = null
    _sessionTimeout = 0
    _sessionInactivityTimeout = 0
        
        
        
        
        
  }
    

    construct new(aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout) {
        // this(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout): Wren constructors cannot call another constructor
    }
    

    construct new(aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout) {
    super()
    initFields_BasicUserRole()
        _m_int_RoleId = a_int_RoleId
        _role = aRole
        _displayValue = aDisplayValue
        _sessionTimeout = aSessionTimeout
        _sessionInactivityTimeout = aSessionInactivityTimeout
        BasicUserRoles.getInstance().roleVector.add(this)
    }
    

    getRoleId() {
        return _m_int_RoleId
    }
    

    getRole() {
        return _role
    }
    

    getSessionTimeout() {
        return _sessionTimeout
    }
    

    getSessionInactivityTimeout() {
        return _sessionInactivityTimeout
    }
    

    equals(basicUserRole) {
        if ((this.getRoleId() == basicUserRole.getRoleId())) {
            return true
        }
        return false
    }
    

    toString() {
        return this.getRole()
    }
}

import "../../../../../java/io/Serializable" for Serializable
import "./BasicUserRoles" for BasicUserRoles

