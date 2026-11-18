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

class AbFile is JObject {
    static NULL_FILE {
    if (__NULL_FILE_set == null) {
      __NULL_FILE_set = true
      __NULL_FILE = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING)
    }
    return __NULL_FILE
  }
  static NULL_FILE=(value) {
    __NULL_FILE_set = true
    __NULL_FILE = value
  }
  file { _file }
  file=(value) { _file = value }

  initFields_AbFile() {
    _file = null
        
  }
    

    static createAbFileWithChild(file, childPathName) {
        return AbFile.new(File.new(file.getFile(), childPathName))
    }
    

    static createAbFile(filePath) {
        return AbFile.new(File.new(AbPath.new(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()))
    }
    

    static createAbFilePathAndName(filePath, fileName) {
        return AbFile.new(File.new(AbPath.new(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName))
    }
    

    static createAbFileFromAbPath(abPath) {
        return AbFile.new(File.new(abPath.toFileSystemString()))
    }
    

    static createAbFileFromRawPath(filePath) {
        return AbFile.new(File.new(filePath))
    }
    

    construct new(file) {
    super()
    initFields_AbFile()
        _file = file
    }
    

    getFile() {
        return _file
    }
    

    getName() {
        return _file.getName()
    }
    

    getParent() {
        return _file.getParent()
    }
    

    getParentFile() {
        return _file.getParentFile()
    }
    

    getPath() {
        return _file.getPath()
    }
    

    isAbsolute() {
        return _file.isAbsolute()
    }
    

    getAbsolutePath() {
        return _file.getAbsolutePath()
    }
    

    getAbsoluteFile() {
        return _file.getAbsoluteFile()
    }
    

    getCanonicalPath() {
        return _file.getCanonicalPath()
    }
    

    getCanonicalFile() {
        return _file.getCanonicalFile()
    }
    

    toURI() {
        return _file.toURI()
    }
    

    canRead() {
        return _file.canRead()
    }
    

    canWrite() {
        return _file.canWrite()
    }
    

    exists() {
        return _file.exists()
    }
    

    isDirectory() {
        return _file.isDirectory()
    }
    

    isFile() {
        return _file.isFile()
    }
    

    isHidden() {
        return _file.isHidden()
    }
    

    lastModified() {
        return _file.lastModified()
    }
    

    length() {
        return _file.length()
    }
    

    createNewFile() {
        return _file.createNewFile()
    }
    

    delete() {
        return _file.delete()
    }
    

    deleteOnExit() {
        _file.deleteOnExit()
    }
    

    list() {
        return _file.list()
    }
    

    listWithFilter(filter) {
        return _file.list(filter)
    }
    

    listFiles() {
        return _file.listFiles()
    }
    

    listFilesFileNameFilter(filter) {
        return _file.listFiles(filter)
    }
    

    listFilesFileFilter(filter) {
        return _file.listFiles(filter)
    }
    

    mkdir() {
        return _file.mkdir()
    }
    

    mkdirs() {
        return _file.mkdirs()
    }
    

    renameTo(dest) {
        return _file.renameTo(dest.getFile())
    }
    

    setLastModified(time) {
        return _file.setLastModified(time)
    }
    

    setReadOnly() {
        return _file.setReadOnly()
    }
    

    setWritable(writable, ownerOnly) {
        return _file.setExecutable(writable, ownerOnly)
    }
    

    setWritable(writable) {
        return _file.setWritable(writable)
    }
    

    setReadable(readable, ownerOnly) {
        return _file.setReadable(readable, ownerOnly)
    }
    

    setReadable(readable) {
        return _file.setReadable(readable)
    }
    

    setExecutable(executable, ownerOnly) {
        return _file.setExecutable(executable, ownerOnly)
    }
    

    setExecutable(executable) {
        return _file.setExecutable(executable)
    }
    

    canExecute() {
        return _file.canExecute()
    }
    

    getTotalSpace() {
        return _file.getTotalSpace()
    }
    

    getFreeSpace() {
        return _file.getFreeSpace()
    }
    

    getUsableSpace() {
        return _file.getUsableSpace()
    }
    

    compareTo(pathname) {
        return _file.compareTo(pathname)
    }
    

    equals(obj) {
        return TsUtil.getInstance().equalsNotstring(_file, obj)
    }
    

    hashCode() {
        return _file.hashCode()
    }
    

    toString() {
        return _file.toString()
    }
}

import "../../../../../java/io/File" for File
import "../../../../../java/io/FileFilter" for FileFilter
import "../../../../../java/io/FilenameFilter" for FilenameFilter
import "../../../../../java/io/IOException" for IOException
import "../../../../../java/net/URI" for URI
import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/io/path/AbPath" for AbPath
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./AbFileInterface" for AbFileInterface

