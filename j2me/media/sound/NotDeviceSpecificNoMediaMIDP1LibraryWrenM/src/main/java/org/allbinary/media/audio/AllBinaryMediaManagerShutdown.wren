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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR

class AllBinaryMediaManagerShutdown is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AllBinaryMediaManagerShutdown.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_AllBinaryMediaManagerShutdown() {
  }

  construct new() {
    super()
    initFields_AllBinaryMediaManagerShutdown()
  }
    

    static shutdown(soundsFactoryInterface) {
        var logUtil = LogUtil.getInstance()
        var commonStrings = CommonStrings.getInstance()
        logUtil.putF(commonStrings.START, AllBinaryMediaManagerShutdown.instance, "shutdown")
        AllBinaryMediaManager.shutdown(soundsFactoryInterface)
    }
}

import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./AllBinaryMediaManager" for AllBinaryMediaManager
import "./SoundsFactoryInterface" for SoundsFactoryInterface

