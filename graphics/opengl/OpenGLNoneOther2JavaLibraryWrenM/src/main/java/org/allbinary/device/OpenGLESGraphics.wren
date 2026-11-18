// Generated Code Do Not Modify
// package org.allbinary.device

import "../../../allbinary_java" for JObject, JException, JR
import "../../../javax/microedition/lcdui/Graphics" for Graphics

class OpenGLESGraphics is Graphics {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  gl { _gl }
  gl=(value) { _gl = value }

  initFields_OpenGLESGraphics() {
    _commonStrings = null
    _gl = null
        _commonStrings = CommonStrings.getInstance()
        _gl = NullGL10.NULL_GL10
  }
    

    construct new() {
    super()
    initFields_OpenGLESGraphics()
    }
    

    updateGL(gl) {
    }
    

    set(gl) {
    }
    

    init() {
    }
    

    update() {
    }
    

    setOrthoginalMode() {
    }
    

    setCameraMode() {
    }
    

    getGl10() {
        return _gl
    }
    

    setFontDebug(font, fontDebug) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../javax/microedition/lcdui/Font" for Font
import "../../../org/allbinary/graphics/font/FontDebugBase" for FontDebugBase
import "../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface" for OpenGLSurfaceChangedInterface
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./GraphicsInterface" for GraphicsInterface
import "./NullGL10" for NullGL10

