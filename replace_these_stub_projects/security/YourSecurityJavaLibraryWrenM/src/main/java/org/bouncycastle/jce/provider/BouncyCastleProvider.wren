// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../java/security/Provider" for Provider

class BouncyCastleProvider is Provider {
    static info {
    if (__info_set == null) {
      __info_set = true
      __info = "BouncyCastle Security Provider v1.41"
    }
    return __info
  }
  static info=(value) {
    __info_set = true
    __info = value
  }
    static PROVIDER_NAME {
    if (__PROVIDER_NAME_set == null) {
      __PROVIDER_NAME_set = true
      __PROVIDER_NAME = "BC"
    }
    return __PROVIDER_NAME
  }
  static PROVIDER_NAME=(value) {
    __PROVIDER_NAME_set = true
    __PROVIDER_NAME = value
  }

  initFields_BouncyCastleProvider() {
  }
    

    construct new() {
        super(BouncyCastleProvider.PROVIDER_NAME, 1.41, BouncyCastleProvider.info)
    }
    

    setParameter(parameterName, parameter) {
    }
}


