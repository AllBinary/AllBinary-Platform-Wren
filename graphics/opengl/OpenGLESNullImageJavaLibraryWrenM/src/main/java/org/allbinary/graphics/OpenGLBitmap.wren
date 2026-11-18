// Generated Code Do Not Modify
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/platform/graphics/PlatformBitmapBase" for PlatformBitmapBase

class OpenGLBitmap is PlatformBitmapBase {
  bitmap { _bitmap }
  bitmap=(value) { _bitmap = value }

  initFields_OpenGLBitmap() {
    _bitmap = null
        
  }
    

    construct new(bitmap) {
    super()
    initFields_OpenGLBitmap()
        _bitmap = bitmap
    }
    

    getPixels(pixels, offset, stride, x, y, width, height) {
    }
    

    setPixels(pixels, offset, stride, x, y, width, height) {
    }
    

    recycle() {
    }
}


