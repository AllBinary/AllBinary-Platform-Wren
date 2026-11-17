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

class AdminRoleFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AdminRoleFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  adminRoles { _adminRoles }
  adminRoles=(value) { _adminRoles = value }
  storeAdminRoles { _storeAdminRoles }
  storeAdminRoles=(value) { _storeAdminRoles = value }
  storeManagementRoles { _storeManagementRoles }
  storeManagementRoles=(value) { _storeManagementRoles = value }
  productManagementRoles { _productManagementRoles }
  productManagementRoles=(value) { _productManagementRoles = value }
  reviewManagementRoles { _reviewManagementRoles }
  reviewManagementRoles=(value) { _reviewManagementRoles = value }
  customerManagementRoles { _customerManagementRoles }
  customerManagementRoles=(value) { _customerManagementRoles = value }
  workflowManagementRoles { _workflowManagementRoles }
  workflowManagementRoles=(value) { _workflowManagementRoles = value }
  orderManagementRoles { _orderManagementRoles }
  orderManagementRoles=(value) { _orderManagementRoles = value }
  adjusterManagementRoles { _adjusterManagementRoles }
  adjusterManagementRoles=(value) { _adjusterManagementRoles = value }
  shippingManagementRoles { _shippingManagementRoles }
  shippingManagementRoles=(value) { _shippingManagementRoles = value }
  webManagementRoles { _webManagementRoles }
  webManagementRoles=(value) { _webManagementRoles = value }

  initFields_AdminRoleFactory() {
    _adminRoles = null
    _storeAdminRoles = null
    _storeManagementRoles = null
    _productManagementRoles = null
    _reviewManagementRoles = null
    _customerManagementRoles = null
    _workflowManagementRoles = null
    _orderManagementRoles = null
    _adjusterManagementRoles = null
    _shippingManagementRoles = null
    _webManagementRoles = null
        _adminRoles = BasicArrayListD.new()
        _storeAdminRoles = BasicArrayListD.new()
        _storeManagementRoles = BasicArrayListD.new()
        _productManagementRoles = BasicArrayListD.new()
        _reviewManagementRoles = BasicArrayListD.new()
        _customerManagementRoles = BasicArrayListD.new()
        _workflowManagementRoles = BasicArrayListD.new()
        _orderManagementRoles = BasicArrayListD.new()
        _adjusterManagementRoles = BasicArrayListD.new()
        _shippingManagementRoles = BasicArrayListD.new()
        _webManagementRoles = BasicArrayListD.new()
  }
    

    static getInstance() {
        return AdminRoleFactory.instance
    }
    

    construct new() {
    super()
    initFields_AdminRoleFactory()
        var basicUserRoleFactory = BasicUserRoleFactory.getInstance()
        _adminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER)
        _storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        _storeManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        _storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        _storeManagementRoles.add(basicUserRoleFactory.REVIEWER)
        _storeManagementRoles.add(basicUserRoleFactory.SHIPPING)
        _productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _productManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        _reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _reviewManagementRoles.add(basicUserRoleFactory.REVIEWER)
        _customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        _workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        _orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        _shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _shippingManagementRoles.add(basicUserRoleFactory.SHIPPING)
        _webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        _webManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        _webManagementRoles.add(basicUserRoleFactory.WEBMANAGER)
        _webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        _webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR)
    }
    

    getProductManagementRoles() {
        return _productManagementRoles
    }
    

    getAdminRoles() {
        return _adminRoles
    }
    

    getStoreAdminRoles() {
        return _storeAdminRoles
    }
    

    getStoreManagementRoles() {
        return _storeManagementRoles
    }
    

    getReviewManagementRoles() {
        return _reviewManagementRoles
    }
    

    getCustomerManagementRoles() {
        return _customerManagementRoles
    }
    

    getWorkflowManagementRoles() {
        return _workflowManagementRoles
    }
    

    getWebManagementRoles() {
        return _webManagementRoles
    }
    

    getShippingManagementRoles() {
        return _shippingManagementRoles
    }
    

    getAdjusterManagementRoles() {
        return _adjusterManagementRoles
    }
    

    getOrderManagementRoles() {
        return _orderManagementRoles
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./BasicUserRoleFactory" for BasicUserRoleFactory

