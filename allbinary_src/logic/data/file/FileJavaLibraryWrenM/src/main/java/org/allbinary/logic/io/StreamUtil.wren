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
// package org.allbinary.logic.io

import "../../../../allbinary_java" for JObject, JException, JR

class StreamUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = StreamUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_StreamUtil() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    static getInstance() {
        return StreamUtil.instance
    }
    

    construct new() {
    super()
    initFields_StreamUtil()
    }
    

    get(inputStream, outputStream, buffer) {
        var len = 0
        while (true) {
            len = inputStream.read(buffer, 0, buffer.count)
            if ((len != -1)) {
            } else {
                break
            }
            outputStream.write(buffer, 0, len)
        }
        return outputStream
    }
    

    getByteArray(inputStream, outputStream2, byteArray) {
        var outputStream = outputStream2
        var jerror0 = Fiber.new {
            this.get(inputStream, outputStream, byteArray)
            return outputStream.toByteArray()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
        if (true) {
            this.close(outputStream)
        }
    }
    

    close(closeable) {
        var jerror1 = Fiber.new {
            if ((closeable != null)) {
                closeable.close()
            }
            return true
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CLOSE, e)
            return false
        }
    }
}

import "../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../java/io/Closeable" for Closeable
import "../../../../java/io/InputStream" for InputStream
import "../../../../java/io/OutputStream" for OutputStream
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

