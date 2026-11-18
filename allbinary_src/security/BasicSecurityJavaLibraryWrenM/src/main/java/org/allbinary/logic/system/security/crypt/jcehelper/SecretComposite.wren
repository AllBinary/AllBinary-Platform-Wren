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
// package org.allbinary.logic.system.security.crypt.jcehelper

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "./BaseSecretComposite" for BaseSecretComposite

class SecretComposite is BaseSecretComposite {
  byteUtil { _byteUtil }
  byteUtil=(value) { _byteUtil = value }
  cipher { _cipher }
  cipher=(value) { _cipher = value }
  secretKey { _secretKey }
  secretKey=(value) { _secretKey = value }
  key { _key }
  key=(value) { _key = value }

  initFields_SecretComposite() {
    _byteUtil = null
    _cipher = null
    _secretKey = null
    _key = null
        _byteUtil = ByteUtil.getInstance()
        
        
        
  }
    

    construct new(secretKey, cipher, key) {
    super()
    initFields_SecretComposite()
        _secretKey = secretKey
        _cipher = cipher
        _key = key
    }
    

    encrypt(array) {
        array = this.mutilate(array)
        _cipher.init(Cipher.ENCRYPT_MODE, _secretKey)
        return _cipher.doFinal(array)
    }
    

    decrypt(array) {
        _cipher.init(Cipher.DECRYPT_MODE, _secretKey)
        return this.mutilate(_cipher.doFinal(array))
    }
    

    mutilate(array) {
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _key.count))) break
            var value = _key[index]
            if (((JR.i32(value) < 8) && (JR.i32(value) > 0))) {
                array = _byteUtil.xorByte(array, JR.i32(value))
            }
            }
        }
        return array
    }
}

import "../../../../../../../javax/crypto/Cipher" for Cipher
import "../../../../../../../javax/crypto/SecretKey" for SecretKey
import "../../../../../../../org/allbinary/logic/java/byteutil/ByteUtil" for ByteUtil

