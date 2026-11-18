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
// package org.allbinary.logic.system.security.licensing

import "../../../../../../allbinary_java" for JObject, JException, JR

// This is the information sent to the license server
class ClientInformation is JObject {
  operatingSystemInterface { _operatingSystemInterface }
  operatingSystemInterface=(value) { _operatingSystemInterface = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  name { _name }
  name=(value) { _name = value }
  shortName { _shortName }
  shortName=(value) { _shortName = value }
  version { _version }
  version=(value) { _version = value }
  specialName { _specialName }
  specialName=(value) { _specialName = value }
  hardSale { _hardSale }
  hardSale=(value) { _hardSale = value }
  licenseId { _licenseId }
  licenseId=(value) { _licenseId = value }
  licenseServers { _licenseServers }
  licenseServers=(value) { _licenseServers = value }

  initFields_ClientInformation() {
    _operatingSystemInterface = null
    _tsUtil = null
    _name = null
    _shortName = null
    _version = null
    _specialName = null
    _hardSale = false
    _licenseId = null
    _licenseServers = null
        _operatingSystemInterface = NoOperatingSystem.NO_OPERATING_SYSTEM
        _tsUtil = TsUtil.getInstance()
        
        
        
        
        _hardSale = true
        _licenseId = StringUtil.getInstance().EMPTY_STRING
        _licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance()
  }
    

    construct new(name, version, specialName, shortName) {
    super()
    initFields_ClientInformation()
        _name = name
        _version = version
        _specialName = specialName
        _shortName = StringMaker.new().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).toString()
        this.init()
    }
    

    init() {
    }
    

    getOperatingSystemInterface() {
        return _operatingSystemInterface
    }
    

    getName() {
        return _name
    }
    

    getSpecialName() {
        return _specialName
    }
    

    getVersion() {
        return _version
    }
    

    getLicenseId() {
        return _licenseId
    }
    

    getLicenseServers() {
        return _licenseServers
    }
    

    getLicenseServer(index) {
        return _licenseServers.objectArray[index]
    }
    

    getNumberOfLicenseServers() {
        return _licenseServers.size()
    }
    

    toHashtable() {
        var abeClientInformationData = AbeClientInformationData.getInstance()
        var genericOperatingSystem = this.getOperatingSystemInterface()
        var clientInfoHashtable = StdUtil.getInstance().createHashtable()
        clientInfoHashtable.put(abeClientInformationData.NAME, _name)
        clientInfoHashtable.put(abeClientInformationData.VERSION, _version)
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, _specialName)
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, this.getLicenseId())
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName())
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch())
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion())
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.toString())
        var hardwareInterface = SystemHardwareFactory.getInstance().getInstance(genericOperatingSystem)
        var hardwareString = hardwareInterface.toString()
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString)
        return clientInfoHashtable
    }
    

    isSameId(alicenseId) {
        if ((_tsUtil.compareTo(this.getLicenseId(), alicenseId) == 0)) {
            return true
        } else {
            return false
        }
    }
    

    isLargerOrDifferentServerList(list) {
        var size = JR.i32(list.size() - 1)
        var currentSize = JR.i32(_licenseServers.size() - 1)
        if ((size > currentSize)) {
            return true
        }
        if (true) {
            var index = size
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var newServerName = list.objectArray[index]
            if (true) {
                var index2 = currentSize
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 - 1)
                    }
                    jfirst = false
                    if (!((index2 >= 0))) break
                var nextOldServerName = _licenseServers.objectArray[index]
                if ((_tsUtil.compareTo(newServerName, nextOldServerName) != 0)) {
                    return true
                }
                }
            }
            }
        }
        return false
    }
    

    setHardSale(hardSale) {
        _hardSale = hardSale
    }
    

    isHardSale() {
        return _hardSale
    }
    

    setOperatingSystemInterface(operatingSystemInterface) {
        _operatingSystemInterface = operatingSystemInterface
    }
    

    setLicenseId(licenseId) {
        _licenseId = licenseId
    }
    

    setLicenseServers(licenseServers) {
        _licenseServers = licenseServers
    }
    

    toShortString() {
        return _shortName
    }
}

import "../../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/logic/system/hardware/HardwareInterface" for HardwareInterface
import "../../../../../../org/allbinary/logic/system/hardware/SystemHardwareFactory" for SystemHardwareFactory
import "../../../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../../../org/allbinary/logic/system/os/NoOperatingSystem" for NoOperatingSystem
import "../../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "../../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./AbeClientInformationInterface" for AbeClientInformationInterface
import "./AbeClientInformationData" for AbeClientInformationData

