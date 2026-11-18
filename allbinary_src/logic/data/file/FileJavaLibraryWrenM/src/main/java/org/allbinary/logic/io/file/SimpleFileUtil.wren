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
// package org.allbinary.logic.io.file

import "../../../../../allbinary_java" for JObject, JException, JR

class SimpleFileUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SimpleFileUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  NULL_WRITER { _NULL_WRITER }
  NULL_WRITER=(value) { _NULL_WRITER = value }
  NULL_READER { _NULL_READER }
  NULL_READER=(value) { _NULL_READER = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  nullUtil { _nullUtil }
  nullUtil=(value) { _nullUtil = value }
  streamUtil { _streamUtil }
  streamUtil=(value) { _streamUtil = value }

  initFields_SimpleFileUtil() {
    _logUtil = null
    _NULL_WRITER = null
    _NULL_READER = null
    _commonStrings = null
    _nullUtil = null
    _streamUtil = null
        _logUtil = LogUtil.getInstance()
        _NULL_WRITER = SimpleFileUtil.nullWriter()
        _NULL_READER = SimpleFileUtil.nullReader()
        _commonStrings = CommonStrings.getInstance()
        _nullUtil = NullUtil.getInstance()
        _streamUtil = StreamUtil.getInstance()
  }

  construct new() {
    super()
    initFields_SimpleFileUtil()
  }
    

    static getInstance() {
        return SimpleFileUtil.instance
    }
    

    static nullOutputStream() {
        return NullOutputStream.NULL_OUTPUT_STREAM
    }
    

    static nullWriter() {
        return NullWriter.NULL_WRITER
    }
    

    static nullReader() {
        return NullReader.NULL_READER
    }
    

    loadFileAsList(inputStream, max, byteArray1) {
        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0)
    }
    

    loadFileAsListReturnLine(inputStream, max, byteArray1, includeReturnLine) {
        var stringList = BasicArrayListD.new()
        if ((inputStream == null)) {
            return stringList
        }
        var byteArray = _nullUtil.NULL_BYTE_ARRAY
        var jerror0 = Fiber.new {
            var outputStream2 = ByteArrayOutputStream.new(max)
            byteArray = _streamUtil.getByteArray(inputStream, outputStream2, byteArray1)
            _streamUtil.close(inputStream)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _streamUtil.close(inputStream)
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.ADD, e)
        }
        if ((byteArray == null)) {
            return stringList
        }
        var size = byteArray.count
        var index = 0
        var startIndex = 0
        var returnLine = 0
        while ((index < size)) {
            startIndex = index
            while (((index < JR.i32(size - 1)) && (byteArray[index] != JR.i8("\n".bytes[0])))) {
                index = JR.i32(index + 1)
            }
            if ((includeReturnLine == 0)) {
                if (((index > 0) && (byteArray[JR.i32(index - 1)] == JR.i8("\r".bytes[0])))) {
                    returnLine = 1
                } else {
                    returnLine = 0
                }
            }
            var s = JR.fromChars(byteArray, startIndex, (JR.i32(JR.i32(JR.i32(index + includeReturnLine) - returnLine) - startIndex)))
            stringList.add(s)
            index = JR.i32(index + 1)
        }
        return stringList
    }
    

    createStringFromArrayOfStrings(stringArray) {
        var stringMaker = StringMaker.new()
        var size = stringArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            stringMaker.append(stringArray[index])
            }
        }
        return stringMaker.toString()
    }
}

import "../../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../../java/io/InputStream" for InputStream
import "../../../../../java/io/OutputStream" for OutputStream
import "../../../../../java/io/Reader" for Reader
import "../../../../../java/io/Writer" for Writer
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/io/NullOutputStream" for NullOutputStream
import "../../../../../org/allbinary/logic/io/NullReader" for NullReader
import "../../../../../org/allbinary/logic/io/NullWriter" for NullWriter
import "../../../../../org/allbinary/logic/io/StreamUtil" for StreamUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

