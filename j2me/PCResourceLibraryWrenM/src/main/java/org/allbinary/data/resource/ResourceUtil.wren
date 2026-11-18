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

//J2SE - PC
class ResourceUtil is JObject {
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
  path { _path }
  path=(value) { _path = value }
  ext { _ext }
  ext=(value) { _ext = value }

  initFields_ResourceUtil() {
    _logUtil = null
    _path = null
    _ext = null
        _logUtil = LogUtil.getInstance()
        _path = StringUtil.getInstance().EMPTY_STRING
        _ext = StringUtil.getInstance().EMPTY_STRING
  }
    

    static getInstance() {
        return ResourceUtil.instance
    }
    

    construct new() {
    super()
    initFields_ResourceUtil()
    }
    

    setLoadingPaths(path, ext) {
        _path = path
        _ext = ext
    }
    

    setClassLoader(classLoader) {
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
        var inputStream = FileInputStream.new(StringMaker.new().append(_path).append(resource).append(_ext).toString())
        if ((inputStream != null)) {
            var byteArray = List.filled(inputStream.available(), 0)
            StreamUtil.getInstance().getByteArray(inputStream, ByteArrayOutputStream.new(), byteArray)
            return ByteArrayInputStream.new(byteArray)
        }
        return inputStream
    }
    

    addResource(resource, value) {
    }
}

import "../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../java/io/FileInputStream" for FileInputStream
import "../../../../java/io/InputStream" for InputStream
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/io/StreamUtil" for StreamUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../java/lang/Integer" for Integer

