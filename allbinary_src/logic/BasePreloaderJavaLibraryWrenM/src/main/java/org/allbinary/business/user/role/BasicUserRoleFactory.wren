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

class BasicUserRoleFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicUserRoleFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  INACTIVITYTIMEOUT { _INACTIVITYTIMEOUT }
  INACTIVITYTIMEOUT=(value) { _INACTIVITYTIMEOUT = value }
  CUSTOMERTIMEOUT { _CUSTOMERTIMEOUT }
  CUSTOMERTIMEOUT=(value) { _CUSTOMERTIMEOUT = value }
  CUSTOMERMAXSESSIONTIME { _CUSTOMERMAXSESSIONTIME }
  CUSTOMERMAXSESSIONTIME=(value) { _CUSTOMERMAXSESSIONTIME = value }
  MAXSESSIONTIME { _MAXSESSIONTIME }
  MAXSESSIONTIME=(value) { _MAXSESSIONTIME = value }
  INSTALLER { _INSTALLER }
  INSTALLER=(value) { _INSTALLER = value }
  ADMINISTRATOR { _ADMINISTRATOR }
  ADMINISTRATOR=(value) { _ADMINISTRATOR = value }
  CUSTOMER { _CUSTOMER }
  CUSTOMER=(value) { _CUSTOMER = value }
  SUBSCRIBERCUSTOMER { _SUBSCRIBERCUSTOMER }
  SUBSCRIBERCUSTOMER=(value) { _SUBSCRIBERCUSTOMER = value }
  WHOLESALECUSTOMER { _WHOLESALECUSTOMER }
  WHOLESALECUSTOMER=(value) { _WHOLESALECUSTOMER = value }
  STOREMANAGER { _STOREMANAGER }
  STOREMANAGER=(value) { _STOREMANAGER = value }
  PRODUCTMANAGER { _PRODUCTMANAGER }
  PRODUCTMANAGER=(value) { _PRODUCTMANAGER = value }
  CUSTOMERMANAGER { _CUSTOMERMANAGER }
  CUSTOMERMANAGER=(value) { _CUSTOMERMANAGER = value }
  PAYMENTMANAGER { _PAYMENTMANAGER }
  PAYMENTMANAGER=(value) { _PAYMENTMANAGER = value }
  ORDERMANAGER { _ORDERMANAGER }
  ORDERMANAGER=(value) { _ORDERMANAGER = value }
  WEBMANAGER { _WEBMANAGER }
  WEBMANAGER=(value) { _WEBMANAGER = value }
  REVIEWER { _REVIEWER }
  REVIEWER=(value) { _REVIEWER = value }
  SHIPPING { _SHIPPING }
  SHIPPING=(value) { _SHIPPING = value }
  ADJUSTER { _ADJUSTER }
  ADJUSTER=(value) { _ADJUSTER = value }
  WORKFLOWEDITOR { _WORKFLOWEDITOR }
  WORKFLOWEDITOR=(value) { _WORKFLOWEDITOR = value }
  WIZARD { _WIZARD }
  WIZARD=(value) { _WIZARD = value }
  VIEWEDITOR { _VIEWEDITOR }
  VIEWEDITOR=(value) { _VIEWEDITOR = value }

  initFields_BasicUserRoleFactory() {
    _INACTIVITYTIMEOUT = 0
    _CUSTOMERTIMEOUT = 0
    _CUSTOMERMAXSESSIONTIME = 0
    _MAXSESSIONTIME = 0
    _INSTALLER = null
    _ADMINISTRATOR = null
    _CUSTOMER = null
    _SUBSCRIBERCUSTOMER = null
    _WHOLESALECUSTOMER = null
    _STOREMANAGER = null
    _PRODUCTMANAGER = null
    _CUSTOMERMANAGER = null
    _PAYMENTMANAGER = null
    _ORDERMANAGER = null
    _WEBMANAGER = null
    _REVIEWER = null
    _SHIPPING = null
    _ADJUSTER = null
    _WORKFLOWEDITOR = null
    _WIZARD = null
    _VIEWEDITOR = null
        _INACTIVITYTIMEOUT = 360000000
        _CUSTOMERTIMEOUT = 360000000
        _CUSTOMERMAXSESSIONTIME = 360000000
        _MAXSESSIONTIME = 360000000
        _INSTALLER = BasicUserRole.new("Installer", 16, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _ADMINISTRATOR = BasicUserRole.new("Administrator", 0, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _CUSTOMER = BasicUserRole.new("CustomerUser", "Customer User", 1, _CUSTOMERTIMEOUT, _CUSTOMERMAXSESSIONTIME)
        _SUBSCRIBERCUSTOMER = BasicUserRole.new("SubscriberUser", "Subscriber User", 2, _CUSTOMERTIMEOUT, _CUSTOMERMAXSESSIONTIME)
        _WHOLESALECUSTOMER = BasicUserRole.new("WholesaleUser", "Wholesale User", 3, _CUSTOMERTIMEOUT, _CUSTOMERMAXSESSIONTIME)
        _STOREMANAGER = BasicUserRole.new("StoreManager", "Store Manager", 4, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _PRODUCTMANAGER = BasicUserRole.new("ProductManager", "Product Manager", 5, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _CUSTOMERMANAGER = BasicUserRole.new("UserManager", "User Manager", 6, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _PAYMENTMANAGER = BasicUserRole.new("PaymentManager", "Payment Manager", 7, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _ORDERMANAGER = BasicUserRole.new("OrderManager", "Order Manager", 8, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _WEBMANAGER = BasicUserRole.new("WebManager", "Web Manager", 9, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _REVIEWER = BasicUserRole.new("Reviewer", 10, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _SHIPPING = BasicUserRole.new("Shipping", 11, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _ADJUSTER = BasicUserRole.new("Adjuster", 12, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _WORKFLOWEDITOR = BasicUserRole.new("WorkFlowEditor", "WorkFlow Editor", 13, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _WIZARD = BasicUserRole.new("WizardUser", "Wizard User", 14, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
        _VIEWEDITOR = BasicUserRole.new("ViewEditor", "View Editor", 15, _MAXSESSIONTIME, _INACTIVITYTIMEOUT)
  }

  construct new() {
    super()
    initFields_BasicUserRoleFactory()
  }
    

    static getInstance() {
        return BasicUserRoleFactory.instance
    }
}

import "./BasicUserRole" for BasicUserRole

