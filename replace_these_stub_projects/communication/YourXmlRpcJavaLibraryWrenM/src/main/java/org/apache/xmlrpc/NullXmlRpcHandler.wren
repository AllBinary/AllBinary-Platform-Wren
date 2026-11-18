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
// package org.apache.xmlrpc

import "../../../allbinary_java" for JObject, JException, JR

class NullXmlRpcHandler is JObject {
    static NULL_XML_RPC_HANDLER {
    if (__NULL_XML_RPC_HANDLER_set == null) {
      __NULL_XML_RPC_HANDLER_set = true
      __NULL_XML_RPC_HANDLER = NullXmlRpcHandler.new()
    }
    return __NULL_XML_RPC_HANDLER
  }
  static NULL_XML_RPC_HANDLER=(value) {
    __NULL_XML_RPC_HANDLER_set = true
    __NULL_XML_RPC_HANDLER = value
  }

  initFields_NullXmlRpcHandler() {
  }

  construct new() {
    super()
    initFields_NullXmlRpcHandler()
  }
    

    execute(method, params) {
        return NullUtil.getInstance().NULL_OBJECT
    }
}

import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "./XmlRpcHandler" for XmlRpcHandler

