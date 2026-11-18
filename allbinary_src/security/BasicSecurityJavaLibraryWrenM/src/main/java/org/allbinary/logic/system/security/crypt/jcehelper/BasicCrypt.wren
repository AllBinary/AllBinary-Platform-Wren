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
// package org.allbinary.logic.system.security.crypt.jcehelper

import "../../../../../../../allbinary_java" for JObject, JException, JR

class BasicCrypt is JObject {
  byteUtil { _byteUtil }
  byteUtil=(value) { _byteUtil = value }
  key { _key }
  key=(value) { _key = value }

  initFields_BasicCrypt() {
    _byteUtil = null
    _key = null
        _byteUtil = ByteUtil.getInstance()
        
  }
    

    construct new(keyAsString) {
    super()
    initFields_BasicCrypt()
        var key = NullUtil.getInstance().NULL_BYTE_ARRAY
        var jerror0 = Fiber.new {
            key = TsUtil.getInstance().getByteArray(keyAsString)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e)
        }
        _key = key
    }
    

    encrypt(array) {
        var jerror1 = Fiber.new {
            return this.mutilate(array)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        }
    }
    

    decrypt(array) {
        var jerror2 = Fiber.new {
            return this.mutilate(array)
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        }
    }
    

    mutilate(array) {
        var value = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _key.count))) break
            value = _key[index]
            array = _byteUtil.xor(array, value)
            }
        }
        return array
    }
}

import "../../../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../../../org/allbinary/init/crypt/jcehelper/CryptInterface" for CryptInterface
import "../../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../../../org/allbinary/logic/java/byteutil/ByteUtil" for ByteUtil
import "../../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

