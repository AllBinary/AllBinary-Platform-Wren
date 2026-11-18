// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

import "../../../../allbinary_java" for JObject, JException, JR

class OpenGLProcessor is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_OpenGLProcessor() {
    _logUtil = null
    _commonStrings = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
  }

  construct new() {
    super()
    initFields_OpenGLProcessor()
  }
    

    process(gl) {
    }
}

import "../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

