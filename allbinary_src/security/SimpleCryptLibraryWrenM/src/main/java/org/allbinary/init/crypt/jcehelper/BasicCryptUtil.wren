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
// package org.allbinary.init.crypt.jcehelper

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicCryptUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BasicCryptUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  XML_START { _XML_START }
  XML_START=(value) { _XML_START = value }

  initFields_BasicCryptUtil() {
    _logUtil = null
    _tsUtil = null
    _XML_START = null
        _logUtil = LogUtil.getInstance()
        _tsUtil = TsUtil.getInstance()
        _XML_START = "<?xml"
  }

  construct new() {
    super()
    initFields_BasicCryptUtil()
  }
    

    static getInstance() {
        return BasicCryptUtil.instance
    }
    

    getDecryptedInputStream(inputStream, cryptInterface) {
        var buffer = ByteArrayOutputStream.new()
        var ch = 0
        while (true) {
            ch = inputStream.read()
            if ((ch == -1)) {
                break
            }
            buffer.write(ch)
        }
        var decrypted = cryptInterface.decrypt(buffer.toByteArray())
        var decryptedString = decrypted
        var index = JR.indexOf(decryptedString, _XML_START)
        if ((index > 0)) {
            decryptedString = JR.substring(decryptedString, index)
        }
        return ByteArrayInputStream.new(_tsUtil.getByteArray(decryptedString))
    }
}

import "../../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../../java/io/InputStream" for InputStream
import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "./CryptInterface" for CryptInterface

