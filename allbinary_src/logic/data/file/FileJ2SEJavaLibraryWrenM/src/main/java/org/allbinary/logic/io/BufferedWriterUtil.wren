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

class BufferedWriterUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BufferedWriterUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  commonLabels { _commonLabels }
  commonLabels=(value) { _commonLabels = value }
  REMOVING_OLD { _REMOVING_OLD }
  REMOVING_OLD=(value) { _REMOVING_OLD = value }

  initFields_BufferedWriterUtil() {
    _logUtil = null
    _commonStrings = null
    _commonLabels = null
    _REMOVING_OLD = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _commonLabels = CommonLabels.getInstance()
        _REMOVING_OLD = "Remove old for overwriting: "
  }

  construct new() {
    super()
    initFields_BufferedWriterUtil()
  }
    

    static getInstance() {
        return BufferedWriterUtil.instance
    }
    

    overwrite(jp1, jp2) {
    }

    overwrite_jo1(path, data) {
        var abFile = AbFile.createAbFile(path)
        if (abFile.exists()) {
            _logUtil.putF(_REMOVING_OLD + path, this, _commonStrings.CREATE)
            abFile.delete()
        } else {
            var name = AbPathData.getInstance().removeNameFromPath(path)
            var abFileDirectory = AbFile.createAbFile(name)
            if (abFileDirectory.exists()) {
            } else {
                var stringBuilder = StringMaker.new()
                _logUtil.putF(stringBuilder.append(_commonStrings.CREATE).append(_commonLabels.COLON_SEP).append(name).toString(), this, _commonStrings.CREATE)
                var result = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                _logUtil.putF(stringBuilder.append(_commonLabels.RESULT_).appendboolean(result).toString(), this, _commonStrings.CREATE)
            }
        }
        this.write(abFile, data)
    }
    

    overwrite_jo2(abFile, data) {
        if (abFile.exists()) {
            _logUtil.putF(_REMOVING_OLD + JR.str(abFile.getPath()), this, _commonStrings.CREATE)
            abFile.delete()
        } else {
            var name = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath())
            var abFileDirectory = AbFile.createAbFile(name)
            if (abFileDirectory.exists()) {
            } else {
                var stringBuilder = StringMaker.new()
                _logUtil.putF(stringBuilder.append(_commonStrings.CREATE).append(_commonLabels.COLON_SEP).append(name).toString(), this, _commonStrings.CREATE)
                var result = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                _logUtil.putF(stringBuilder.append(_commonLabels.RESULT_).appendboolean(result).toString(), this, _commonStrings.CREATE)
            }
        }
        this.write(abFile, data)
    }
    

    write(abFile, data) {
        var fileOut = BufferedWriter.new(FileWriter.new(AbFileNativeUtil.get(abFile)))
        fileOut.write(data, 0, JR.length(data))
        fileOut.newLine()
        fileOut.flush()
    }
}

import "../../../../java/io/BufferedWriter" for BufferedWriter
import "../../../../java/io/FileWriter" for FileWriter
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/io/file/AbFile" for AbFile
import "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" for AbFileNativeUtil
import "../../../../org/allbinary/logic/io/path/AbPathData" for AbPathData
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

