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

class KeySpecFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = KeySpecFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DES { _DES }
  DES=(value) { _DES = value }
  DESEDE { _DESEDE }
  DESEDE=(value) { _DESEDE = value }
  BLOWFISH { _BLOWFISH }
  BLOWFISH=(value) { _BLOWFISH = value }

  initFields_KeySpecFactory() {
    _DES = null
    _DESEDE = null
    _BLOWFISH = null
        _DES = "DES"
        _DESEDE = "DESede"
        _BLOWFISH = "Blowfish"
  }
    

    static getInstance() {
        return KeySpecFactory.instance
    }
    

    construct new() {
    super()
    initFields_KeySpecFactory()
    }
    

    getInstance(algorithm, keyData) {
        var jerror0 = Fiber.new {
            var tsUtil = TsUtil.getInstance()
            if ((tsUtil.compareTo(algorithm, _DES) == 0)) {
                return DESKeySpec.new(keyData)
            } else if ((tsUtil.compareTo(algorithm, _DESEDE) == 0)) {
                return DESedeKeySpec.new(keyData)
            } else {
                Fiber.abort(JR.exception("RuntimeException", ""))
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
    }
}

import "../../../../../../../java/security/spec/KeySpec" for KeySpec
import "../../../../../../../javax/crypto/spec/DESKeySpec" for DESKeySpec
import "../../../../../../../javax/crypto/spec/DESedeKeySpec" for DESedeKeySpec
import "../../../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

