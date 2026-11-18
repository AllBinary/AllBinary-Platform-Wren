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

class PartnerIdentifierFileUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PartnerIdentifierFileUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  FILE_NAME { _FILE_NAME }
  FILE_NAME=(value) { _FILE_NAME = value }

  initFields_PartnerIdentifierFileUtil() {
    _logUtil = null
    _FILE_NAME = null
        _logUtil = LogUtil.getInstance()
        _FILE_NAME = "partner.txt"
  }

  construct new() {
    super()
    initFields_PartnerIdentifierFileUtil()
  }
    

    static getInstance() {
        return PartnerIdentifierFileUtil.instance
    }
    

    get() {
        var jerror0 = Fiber.new {
            var resourceUtil = ResourceUtil.getInstance()
            var inputStream = resourceUtil.getResourceAsStream(_FILE_NAME)
            var inputStreamReader = InputStreamReader.new(inputStream)
            var chars = List.filled(30, 0)
            var size = inputStreamReader.read(chars)
            var partnerString = StringUtil.getInstance().EMPTY_STRING
            if ((size > 0)) {
                partnerString = JR.fromChars(chars, 0, size)
            }
            inputStreamReader.close()
            return partnerString
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET, e)
            return StringUtil.getInstance().NULL_STRING
        }
    }
}

import "../../../../../../java/io/InputStream" for InputStream
import "../../../../../../java/io/InputStreamReader" for InputStreamReader
import "../../../../../../org/allbinary/data/resource/ResourceUtil" for ResourceUtil
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

