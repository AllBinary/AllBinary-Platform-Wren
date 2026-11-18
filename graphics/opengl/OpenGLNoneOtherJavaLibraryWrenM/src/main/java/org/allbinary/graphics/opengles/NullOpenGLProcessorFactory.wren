// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

import "../../../../allbinary_java" for JObject, JException, JR

class NullOpenGLProcessorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_NullOpenGLProcessorFactory() {
  }

  construct new() {
    super()
    initFields_NullOpenGLProcessorFactory()
  }
    

    static getInstance() {
        return NullOpenGLProcessorFactory.instance
    }
}

import "./OpenGLProcessor" for OpenGLProcessor

