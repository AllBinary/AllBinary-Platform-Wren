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
// package org.allbinary.logic.io.file

import "../../../../../allbinary_java" for JObject, JException, JR

class FileWrapperUtil is JObject {

  initFields_FileWrapperUtil() {
  }

  construct new() {
    super()
    initFields_FileWrapperUtil()
  }
    

    static wrapFiles(files) {
        var jerror0 = Fiber.new {
            var abFileArray = List.filled(files.count, null)
            if (true) {
                var index = JR.i32(files.count - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index >= 0))) break
                abFileArray[index] = AbFile.new(files[index])
                }
            }
            return abFileArray
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e)
            return List.filled(0, null)
        }
    }
    

    static wrapFile(file) {
        var jerror1 = Fiber.new {
            return AbFile.new(file)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e)
            return AbFile.NULL_FILE
        }
    }
}

import "../../../../../java/io/File" for File
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "./AbFile" for AbFile

