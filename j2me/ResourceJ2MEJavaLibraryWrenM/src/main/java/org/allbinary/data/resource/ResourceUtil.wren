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

//J2ME
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
    

    getResourceAsStream(resource) {
        var inputStream = JR.className(resource).getResourceAsStream(resource)
        if ((inputStream == null)) {
            inputStream = this.getResourceAsStreamAtStart(resource, 2)
            if ((inputStream == null)) {
                inputStream = this.getResourceAsStreamAtStart(resource, 1)
                if ((inputStream == null)) {
                    var stringMaker = StringMaker.new()
                    var index = JR.lastIndexOf(resource, "/".bytes[0])
                    var resourcePath = JR.substring(resource, JR.i32(index + 1))
                    inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                    if ((inputStream == null)) {
                        resourcePath = JR.substring(resource, index)
                        inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                        if ((inputStream == null)) {
                            var RES = "res"
                            resourcePath = stringMaker.append(RES).append(JR.substring(resource, index)).toString()
                            inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                            if ((inputStream == null)) {
                                stringMaker.delete(0, stringMaker.length())
                                resourcePath = stringMaker.append("/").append(RES).append(JR.substring(resource, index)).toString()
                                inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                                var COLON = CommonSeps.getInstance().COLON
                                if ((inputStream == null)) {
                                    stringMaker.delete(0, stringMaker.length())
                                    resourcePath = stringMaker.append(RES).append(COLON).append(JR.substring(resource, index)).toString()
                                    inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                                    if ((inputStream == null)) {
                                        stringMaker.delete(0, stringMaker.length())
                                        resourcePath = stringMaker.append(RES).append(COLON).append(JR.substring(resource, JR.i32(index + 1))).toString()
                                        inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                                        if ((inputStream == null)) {
                                            var RESOURCE_STRING = "resource"
                                            stringMaker.delete(0, stringMaker.length())
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(JR.substring(resource, index)).toString()
                                            inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                                            if ((inputStream == null)) {
                                                stringMaker.delete(0, stringMaker.length())
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(JR.substring(resource, JR.i32(index + 1))).toString()
                                                inputStream = JR.className(resource).getResourceAsStream(resourcePath)
                                                if ((inputStream == null)) {
                                                    stringMaker.delete(0, stringMaker.length())
                                                    Fiber.abort(JR.exception("Exception", stringMaker.append("Unable to obtain: ").append(resource).toString()))
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream
    }
    

    getResourceAsStreamAtStart(resource, startIndex) {
        var stringMaker = StringMaker.new()
        var index = JR.indexOf(resource, CommonSeps.getInstance().COLON)
        var resourcePath = JR.substring(resource, JR.i32(index + startIndex))
        var inputStream = JR.className(resource).getResourceAsStream(resourcePath)
        if ((inputStream != null)) {
            return inputStream
        }
        return inputStream
    }
    

    addResource(resource, value) {
    }
}

import "../../../../java/io/InputStream" for InputStream
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Integer" for Integer

