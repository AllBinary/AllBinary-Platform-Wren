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
// package org.allbinary.business.init

import "../../../../allbinary_java" for JObject, JException, JR

class LicenseInitInfo is JObject {
  id { _id }
  id=(value) { _id = value }
  serverVector { _serverVector }
  serverVector=(value) { _serverVector = value }

  initFields_LicenseInitInfo() {
    _id = null
    _serverVector = null
        _id = StringUtil.getInstance().EMPTY_STRING
        _serverVector = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_LicenseInitInfo()
    }
    

    getLicenseId() {
        return _id
    }
    

    getServer(index) {
        return _serverVector.objectArray[index]
    }
    

    getNumberOfServers() {
        return _serverVector.size()
    }
    

    setLicenseId(value) {
        _id = value
    }
    

    clearServers() {
        _serverVector = BasicArrayListD.new()
    }
    

    setServer(value, index) {
        _serverVector.addAt(index, value)
    }
    

    addServer(value) {
        _serverVector.add(value)
    }
    

    getServerList() {
        return _serverVector
    }
    

    setServerList(servers) {
        if ((DebugFactory.getInstance() == NoDebug.getInstance())) {
            _serverVector = servers
        }
    }
}

import "../../../../org/allbinary/debug/DebugFactory" for DebugFactory
import "../../../../org/allbinary/debug/NoDebug" for NoDebug
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

