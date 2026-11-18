/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.opengles.renderer

import "../../../../../allbinary_java" for JObject, JException, JR

class AllBinaryRendererBase3 is JObject {
  list { _list }
  list=(value) { _list = value }

  initFields_AllBinaryRendererBase3() {
    _list = null
        _list = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_AllBinaryRendererBase3()
  }
    

    update(gl) {
        while ((_list.size() > 0)) {
            var openGLESImage = _list.removeAt(0)
            if ((openGLESImage != null)) {
                openGLESImage.set(gl)
            }
        }
    }
    

    add(image) {
        _list.add(image)
    }
}

import "../../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../org/allbinary/image/opengles/OpenGLESImage" for OpenGLESImage
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

