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

class LicenseInitInfoUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LicenseInitInfoUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  stringUtil { _stringUtil }
  stringUtil=(value) { _stringUtil = value }
  INITFILENAME { _INITFILENAME }
  INITFILENAME=(value) { _INITFILENAME = value }
  ABOUT { _ABOUT }
  ABOUT=(value) { _ABOUT = value }
  PRIVACY_POLICY { _PRIVACY_POLICY }
  PRIVACY_POLICY=(value) { _PRIVACY_POLICY = value }
  filePath { _filePath }
  filePath=(value) { _filePath = value }

  initFields_LicenseInitInfoUtil() {
    _logUtil = null
    _stringUtil = null
    _INITFILENAME = null
    _ABOUT = null
    _PRIVACY_POLICY = null
    _filePath = null
        _logUtil = LogUtil.getInstance()
        _stringUtil = StringUtil.getInstance()
        _INITFILENAME = "licenseinitdata.dat"
        _ABOUT = "about"
        _PRIVACY_POLICY = "privacy_policy"
        _filePath = _stringUtil.EMPTY_STRING
  }

  construct new() {
    super()
    initFields_LicenseInitInfoUtil()
  }
    

    static getInstance() {
        return LicenseInitInfoUtil.instance
    }
    

    setFilePath(filePath) {
        _filePath = filePath
    }
    

    write(initData) {
        if ((_filePath == _stringUtil.EMPTY_STRING)) {
            _filePath = (URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH)
        }
        var jerror0 = Fiber.new {
            var tsUtil = TsUtil.getInstance()
            var dataOutputStream = DataOutputStreamFactory.getInstance().getInstance(_filePath, _INITFILENAME)
            var licenseIdCrypted = tsUtil.getByteArray(WeakCrypt.new(1).encrypt(initData.getLicenseId()))
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted))
            var numberOfLicenseServers = initData.getNumberOfServers()
            dataOutputStream.writeInt(numberOfLicenseServers)
            var licenseServerCrypted = null
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < numberOfLicenseServers))) break
                licenseServerCrypted = tsUtil.getByteArray(WeakCrypt.new(3).encrypt(initData.getServer(index)))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted))
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put("Command Failed: " + _INITFILENAME, this, "write", e)
            FileStreamFactory.getInstance().delete(_filePath, _INITFILENAME)
            Fiber.abort(e)
        }
    }
    

    read() {
        return this.readAgain(0)
    }
    

    readAgain(initializeCounter) {
        var METHOD_NAME = "readAgain"
        if ((_filePath == _stringUtil.EMPTY_STRING)) {
            _filePath = (URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH)
        }
        var jerror1 = Fiber.new {
            _logUtil.putF("LicenseInitInfo File: " + _INITFILENAME, this, METHOD_NAME)
            var fileStreamFactory = FileStreamFactory.getInstance()
            var iFile = fileStreamFactory.getFileInputStreamInstance(_filePath, _INITFILENAME)
            if ((iFile != null)) {
                var iData = AbDataInputStream.new(iFile)
                var initInfo = LicenseInitInfo.new()
                var decodedByteArray = DatabaseEncoder.decode(iData.readUTF())
                var licenseIdDecoded = decodedByteArray
                initInfo.setLicenseId(WeakCrypt.new(1).decrypt(licenseIdDecoded))
                var numberOfLicenseServers = iData.readInt()
                var NEXT_FILE = StringMaker.new().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").toString()
                var licenseServerDecoded = null
                if (true) {
                    var index = 0
                    var jfirst = true
                    while (true) {
                        if (!jfirst) {
                            index = JR.i32(index + 1)
                        }
                        jfirst = false
                        if (!((index < numberOfLicenseServers))) break
                    decodedByteArray = DatabaseEncoder.decode(iData.readUTF())
                    licenseServerDecoded = decodedByteArray
                    initInfo.setServer(WeakCrypt.new(3).decrypt(licenseServerDecoded), index)
                    _logUtil.putF(NEXT_FILE + JR.str(initInfo.getServer(index)), this, METHOD_NAME)
                    }
                }
                return initInfo
            } else {
                Fiber.abort(JR.exception("Exception", "Could Not Load License InitInfo: " + _INITFILENAME))
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var jerror2 = Fiber.new {
                _logUtil.put("Command Failed: " + _INITFILENAME, this, METHOD_NAME, e)
            }.try()
            if (jerror2 != null) {
                var e2 = jerror2
                _logUtil.put("LicenseInitInfo Read Retry: " + _INITFILENAME, this, "readAgain()", e2)
            }
            Fiber.abort(JR.exception("Exception", "LicenseInitInfo Read Error: " + _INITFILENAME))
        }
    }
    

    getFilePath() {
        return _filePath
    }
}

import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/globals/PATH_GLOBALS" for PATH_GLOBALS
import "../../../../org/allbinary/globals/URLGLOBALS" for URLGLOBALS
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/io/AbDataInputStream" for AbDataInputStream
import "../../../../org/allbinary/logic/io/AbDataOutputStream" for AbDataOutputStream
import "../../../../org/allbinary/logic/io/AbFileInputStream" for AbFileInputStream
import "../../../../org/allbinary/logic/io/DataOutputStreamFactory" for DataOutputStreamFactory
import "../../../../org/allbinary/logic/io/FileStreamFactory" for FileStreamFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/logic/system/security/crypt/DatabaseEncoder" for DatabaseEncoder
import "../../../../org/allbinary/logic/system/security/crypt/WeakCrypt" for WeakCrypt
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "./LicenseInitInfo" for LicenseInitInfo

