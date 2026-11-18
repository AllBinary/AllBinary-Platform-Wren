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

class LicenseServerInitFileUtil is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  NULL_OUTPUT_STREAM { _NULL_OUTPUT_STREAM }
  NULL_OUTPUT_STREAM=(value) { _NULL_OUTPUT_STREAM = value }

  initFields_LicenseServerInitFileUtil() {
    _logUtil = null
    _commonStrings = null
    _NULL_OUTPUT_STREAM = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream()
  }

  construct new() {
    super()
    initFields_LicenseServerInitFileUtil()
  }
    

    init() {
        var jerror0 = Fiber.new {
            var filePath = LicenseInitInfoUtil.getInstance().INITFILENAME
            LicenseInitInfoUtil.getInstance().setFilePath(StringUtil.getInstance().EMPTY_STRING)
            if (FileFactory.getInstance().isFile(filePath)) {
                _logUtil.putF("Using Existing License File", this, _commonStrings.INIT)
            } else {
                this.write()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.INIT, e)
        }
    }
    

    write() {
        var fileOutputStream = _NULL_OUTPUT_STREAM
        var jerror1 = Fiber.new {
            var resourceUtil = ResourceUtil.getInstance()
            var filePath = LicenseInitInfoUtil.getInstance().INITFILENAME
            var inputStream = resourceUtil.getResourceAsStream(filePath)
            _logUtil.putF("Writing Default License File", this, _commonStrings.INIT)
            var fileStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath)
            var b = 0
            var index = 0
            while (true) {
                b = inputStream.read()
                if ((b == -1)) {
                    break
                }
                fileOutputStream.write(b)
                index = JR.i32(index + 1)
            }
            _logUtil.putF("Wrote Bytes: " + JR.str(index), this, _commonStrings.INIT)
            fileOutputStream.flush()
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.INIT, e)
        }
        if (true) {
            StreamUtil.getInstance().close(fileOutputStream)
        }
    }
}

import "../../../../../../java/io/InputStream" for InputStream
import "../../../../../../java/io/OutputStream" for OutputStream
import "../../../../../../org/allbinary/business/init/LicenseInitInfoUtil" for LicenseInitInfoUtil
import "../../../../../../org/allbinary/data/resource/ResourceUtil" for ResourceUtil
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/io/FileStreamFactory" for FileStreamFactory
import "../../../../../../org/allbinary/logic/io/StreamUtil" for StreamUtil
import "../../../../../../org/allbinary/logic/io/file/FileFactory" for FileFactory
import "../../../../../../org/allbinary/logic/io/file/SimpleFileUtil" for SimpleFileUtil
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings

