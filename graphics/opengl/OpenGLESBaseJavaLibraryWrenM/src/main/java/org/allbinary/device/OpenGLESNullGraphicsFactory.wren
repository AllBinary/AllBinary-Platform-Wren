// Generated Code Do Not Modify
// package org.allbinary.device

import "../../../allbinary_java" for JObject, JException, JR

class OpenGLESNullGraphicsFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLESGraphics.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_OpenGLESNullGraphicsFactory() {
  }

  construct new() {
    super()
    initFields_OpenGLESNullGraphicsFactory()
  }
    

    static getInstance() {
        return OpenGLESNullGraphicsFactory.instance
    }
}

import "./OpenGLESGraphics" for OpenGLESGraphics

