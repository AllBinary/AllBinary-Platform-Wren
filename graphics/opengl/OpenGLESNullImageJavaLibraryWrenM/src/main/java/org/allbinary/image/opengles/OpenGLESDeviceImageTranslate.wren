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
// package org.allbinary.image.opengles

import "../../../../allbinary_java" for JObject, JException, JR
import "./OpenGLESImageTranslate" for OpenGLESImageTranslate

class OpenGLESDeviceImageTranslate is OpenGLESImageTranslate {
  translateX { _translateX }
  translateX=(value) { _translateX = value }
  translateY { _translateY }
  translateY=(value) { _translateY = value }
  translateX2 { _translateX2 }
  translateX2=(value) { _translateX2 = value }
  translateY2 { _translateY2 }
  translateY2=(value) { _translateY2 = value }

  initFields_OpenGLESDeviceImageTranslate() {
    _translateX = 0.0
    _translateY = 0.0
    _translateX2 = 0.0
    _translateY2 = 0.0
        _translateX = 0.0
        _translateY = 0.0
        _translateX2 = 0.0
        _translateY2 = 0.0
  }

  construct new() {
    super()
    initFields_OpenGLESDeviceImageTranslate()
  }
    

    translate(gl, openGLESImage, x, y) {
        openGLESImage.imageProcessor.translate(gl, (_translateX + ((openGLESImage.openGLESImageProperties.scaleX * x))), (_translateY + ((openGLESImage.openGLESImageProperties.scaleY * y))))
    }
    

    translate2(gl, openGLESImage) {
        openGLESImage.imageProcessor.translate(gl, _translateX2, _translateY2)
    }
}

import "../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "./OpenGLESImage" for OpenGLESImage

