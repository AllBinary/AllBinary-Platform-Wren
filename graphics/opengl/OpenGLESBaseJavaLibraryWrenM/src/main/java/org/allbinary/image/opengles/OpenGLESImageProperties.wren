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

class OpenGLESImageProperties is JObject {
  textureID { _textureID }
  textureID=(value) { _textureID = value }
  scaleX { _scaleX }
  scaleX=(value) { _scaleX = value }
  scaleY { _scaleY }
  scaleY=(value) { _scaleY = value }
  scaleX2 { _scaleX2 }
  scaleX2=(value) { _scaleX2 = value }
  scaleY2 { _scaleY2 }
  scaleY2=(value) { _scaleY2 = value }
  angle { _angle }
  angle=(value) { _angle = value }
  redf { _redf }
  redf=(value) { _redf = value }
  greenf { _greenf }
  greenf=(value) { _greenf = value }
  bluef { _bluef }
  bluef=(value) { _bluef = value }
  alphaf { _alphaf }
  alphaf=(value) { _alphaf = value }

  initFields_OpenGLESImageProperties() {
    _textureID = 0
    _scaleX = 0.0
    _scaleY = 0.0
    _scaleX2 = 0.0
    _scaleY2 = 0.0
    _angle = 0
    _redf = 0.0
    _greenf = 0.0
    _bluef = 0.0
    _alphaf = 0.0
        _textureID = -1
        _scaleX = 1.0
        _scaleY = 1.0
        _scaleX2 = 1.0
        _scaleY2 = 1.0
        _angle = 0
        _redf = 1.0
        _greenf = 1.0
        _bluef = 1.0
        _alphaf = 1.0
  }

  construct new() {
    super()
    initFields_OpenGLESImageProperties()
  }
}


