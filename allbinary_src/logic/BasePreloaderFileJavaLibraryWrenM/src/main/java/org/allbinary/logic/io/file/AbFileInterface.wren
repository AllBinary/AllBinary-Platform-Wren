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

class AbFileInterface is JObject {
    

    canRead() {
        Fiber.abort(JR.exception("AbstractMethodError", "canRead"))
    }
    

    canWrite() {
        Fiber.abort(JR.exception("AbstractMethodError", "canWrite"))
    }
    

    createNewFile() {
        Fiber.abort(JR.exception("AbstractMethodError", "createNewFile"))
    }
    

    delete() {
        Fiber.abort(JR.exception("AbstractMethodError", "delete"))
    }
    

    deleteOnExit() {
        Fiber.abort(JR.exception("AbstractMethodError", "deleteOnExit"))
    }
    

    exists() {
        Fiber.abort(JR.exception("AbstractMethodError", "exists"))
    }
    

    getAbsolutePath() {
        Fiber.abort(JR.exception("AbstractMethodError", "getAbsolutePath"))
    }
    

    getCanonicalPath() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCanonicalPath"))
    }
    

    getParent() {
        Fiber.abort(JR.exception("AbstractMethodError", "getParent"))
    }
    

    getPath() {
        Fiber.abort(JR.exception("AbstractMethodError", "getPath"))
    }
    

    isAbsolute() {
        Fiber.abort(JR.exception("AbstractMethodError", "isAbsolute"))
    }
    

    isDirectory() {
        Fiber.abort(JR.exception("AbstractMethodError", "isDirectory"))
    }
    

    isFile() {
        Fiber.abort(JR.exception("AbstractMethodError", "isFile"))
    }
    

    isHidden() {
        Fiber.abort(JR.exception("AbstractMethodError", "isHidden"))
    }
    

    lastModified() {
        Fiber.abort(JR.exception("AbstractMethodError", "lastModified"))
    }
    

    length() {
        Fiber.abort(JR.exception("AbstractMethodError", "length"))
    }
    

    list() {
        Fiber.abort(JR.exception("AbstractMethodError", "list"))
    }
    

    listWithFilter(filter) {
        Fiber.abort(JR.exception("AbstractMethodError", "listWithFilter"))
    }
    

    mkdir() {
        Fiber.abort(JR.exception("AbstractMethodError", "mkdir"))
    }
    

    mkdirs() {
        Fiber.abort(JR.exception("AbstractMethodError", "mkdirs"))
    }
    

    setLastModified(time) {
        Fiber.abort(JR.exception("AbstractMethodError", "setLastModified"))
    }
    

    setReadOnly() {
        Fiber.abort(JR.exception("AbstractMethodError", "setReadOnly"))
    }
    

    toString() {
        Fiber.abort(JR.exception("AbstractMethodError", "toString"))
    }
    

    toURI() {
        Fiber.abort(JR.exception("AbstractMethodError", "toURI"))
    }
}

import "../../../../../java/io/FilenameFilter" for FilenameFilter
import "../../../../../java/io/IOException" for IOException
import "../../../../../java/net/URI" for URI

