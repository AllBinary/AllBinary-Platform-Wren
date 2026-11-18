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
// package org.allbinary.graphics.threed

import "../../../../allbinary_java" for JObject, JException, JR

//OpenGLNone
class SWTJOGLProcessor is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SWTJOGLProcessor.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_SWTJOGLProcessor() {
  }

  construct new() {
    super()
    initFields_SWTJOGLProcessor()
  }
    

    static getInstance() {
        return SWTJOGLProcessor.instance
    }
    

    init(display, comp) {
    }
    

    isHolderCreated() {
        return true
    }
    

    setRenderer(renderer) {
    }
    

    isJOGL() {
        return false
    }
    

    createSurface() {
    }
    

    onSurfaceCreated() {
    }
    

    onSurfaceChangedForEvent(event) {
    }
    

    onSurfaceChanged() {
    }
    

    onSurfaceChangedWH(width, height) {
    }
    

    addListener() {
    }
    

    addListeners(midlet) {
    }
    

    run() {
    }
    

    clear() {
    }
    

    setCustom(width, height, ratio) {
    }
    

    setRatioProcessor(ratioProcessor) {
    }
    

    isPortraitRatioProcessor() {
        return true
    }
    

    charWidth(font, ch) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    charsWidth(font, ch, offset, length) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    stringWidth(font, str) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    substringWidth(font, str, offset, len) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/midlet/MIDlet" for MIDlet
import "../../../../java/lang/Runnable" for Runnable
import "./RatioProcessor" for RatioProcessor

