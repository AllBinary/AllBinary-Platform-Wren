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
// package org.allbinary.data.resource

import "../../../../allbinary_java" for JObject, JException, JR

//J2SE - J2ME
class ResourceUtil is JObject {
    static classLoader {
    if (__classLoader_set == null) {
      __classLoader_set = true
      __classLoader = NullUtil.getInstance().NULL_OBJECT
    }
    return __classLoader
  }
  static classLoader=(value) {
    __classLoader_set = true
    __classLoader = value
  }
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ResourceUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_ResourceUtil() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    static getInstance() {
        return ResourceUtil.instance
    }
    

    construct new() {
    super()
    initFields_ResourceUtil()
    }
    

    setLoadingPaths(path, ext) {
        _logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, this, "setLoadingPaths")
    }
    

    setClassLoader(classLoader) {
        _logUtil.putF(StringMaker.new().append("Resource Loader: ").append(JR.className(classLoader)).toString(), this, "setClassLoader")
        ResourceUtil.classLoader = classLoader
    }
    

    getResourceAsStream(resource) {
        var inputStream = this.getResourceAsStreamAtStart(resource, 2)
        if ((inputStream == null)) {
            inputStream = this.getResourceAsStreamAtStart(resource, 1)
            if ((inputStream == null)) {
                Fiber.abort(JR.exception("Exception", StringMaker.new().append("Unable to obtain: ").append(resource).toString()))
            }
        }
        return inputStream
    }
    

    getResourceAsStreamAtStart(resource, startIndex) {
        var commonSeps = CommonSeps.getInstance()
        var index = JR.indexOf(resource, commonSeps.COLON)
        var resourcePath = JR.substring(resource, JR.i32(index + startIndex))
        var inputStream = JR.className(resource).getResourceAsStream(resourcePath)
        if ((inputStream != null)) {
            return inputStream
        }
        var classLoader = ResourceUtil.classLoader
        inputStream = classLoader.getResourceAsStream(resourcePath)
        if ((inputStream != null)) {
            return inputStream
        }
        inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath)
        if ((inputStream != null)) {
            return inputStream
        }
        return inputStream
    }
    

    addResource(resource, value) {
    }
}

import "../../../../java/io/InputStream" for InputStream
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Integer" for Integer
import "../../../../java/lang/Thread" for Thread

