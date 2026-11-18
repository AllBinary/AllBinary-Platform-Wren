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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

class ImageTypeUtil is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = ImageTypeUtil.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  PNG { _PNG }
  PNG=(value) { _PNG = value }
  JPG { _JPG }
  JPG=(value) { _JPG = value }
  GIF { _GIF }
  GIF=(value) { _GIF = value }
  list { _list }
  list=(value) { _list = value }

  initFields_ImageTypeUtil() {
    _PNG = null
    _JPG = null
    _GIF = null
    _list = null
        _PNG = "png"
        _JPG = "jpg"
        _GIF = "gif"
        _list = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_ImageTypeUtil()
        _list.add(_JPG)
        _list.add(_GIF)
        _list.add(_PNG)
    }
    

    isSupported(mediaFileType) {
        mediaFileType = JR.toLowerCase(mediaFileType)
        if (true) {
            var index = JR.i32(_list.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var name = _list.get(index)
            if ((JR.compareTo(mediaFileType, name) == 0)) {
                return true
            }
            }
        }
        return false
    }
    

    static getInstance() {
        return ImageTypeUtil.SINGLETON
    }
}

import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

