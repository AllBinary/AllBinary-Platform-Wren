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

class AbCrypt is JObject {
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  secretComposite { _secretComposite }
  secretComposite=(value) { _secretComposite = value }
  algorithm { _algorithm }
  algorithm=(value) { _algorithm = value }

  initFields_AbCrypt() {
    _tsUtil = null
    _secretComposite = null
    _algorithm = null
        _tsUtil = TsUtil.getInstance()
        _secretComposite = BaseSecretComposite.NULL_SECRET_COMPOSITE
        
  }
    

    construct new(algorithm) {
    super()
    initFields_AbCrypt()
        _algorithm = algorithm
    }
    

    init(keyAsString) {
        var commonStrings = CommonStrings.getInstance()
        var jerror0 = Fiber.new {
            var jerror1 = Fiber.new {
                Security.addProvider(BouncyCastleProvider.new())
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.INIT, e)
            }
            var key = _tsUtil.getByteArray(keyAsString)
            var keySpec = KeySpecFactory.getInstance().getInstance(_algorithm, key)
            var keyFactory = SecretKeyFactory.getInstance(_algorithm)
            var secretKey = keyFactory.generateSecret(keySpec)
            var cipher = Cipher.getInstance(_algorithm)
            _secretComposite = SecretComposite.new(secretKey, cipher, key)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.putOE("init Failed", this, commonStrings.INIT, e)
        }
    }
    

    encrypt(array) {
        var jerror2 = Fiber.new {
            return _secretComposite.encrypt(array)
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        }
    }
    

    decrypt(array) {
        var jerror3 = Fiber.new {
            return _secretComposite.decrypt(array)
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        }
    }
}

import "../../../../../../../java/security/Security" for Security
import "../../../../../../../java/security/spec/KeySpec" for KeySpec
import "../../../../../../../javax/crypto/Cipher" for Cipher
import "../../../../../../../javax/crypto/SecretKey" for SecretKey
import "../../../../../../../javax/crypto/SecretKeyFactory" for SecretKeyFactory
import "../../../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../../../org/allbinary/init/crypt/jcehelper/CryptInterface" for CryptInterface
import "../../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../../org/bouncycastle/jce/provider/BouncyCastleProvider" for BouncyCastleProvider
import "./BaseSecretComposite" for BaseSecretComposite
import "./KeySpecFactory" for KeySpecFactory
import "./SecretComposite" for SecretComposite

