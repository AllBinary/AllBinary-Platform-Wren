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
// package org.allbinary.game.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class RepaintBehavior is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = RepaintBehavior.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  NAME { _NAME }
  NAME=(value) { _NAME = value }

  initFields_RepaintBehavior() {
    _logUtil = null
    _NAME = null
        _logUtil = LogUtil.getInstance()
        _NAME = "RepaintBehavior"
  }

  construct new() {
    super()
    initFields_RepaintBehavior()
  }
    

    static getInstance() {
        return RepaintBehavior.instance
    }
    

    repaint(canvas) {
    }
    

    onChangeRepaint(canvas) {
        var features = Features.getInstance()
        var openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process()
        } else {
            var thread = Thread.new(RepaintRunnable.new(canvas), _NAME)
            thread.start()
        }
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../java/lang/Thread" for Thread
import "./RepaintRunnable" for RepaintRunnable

