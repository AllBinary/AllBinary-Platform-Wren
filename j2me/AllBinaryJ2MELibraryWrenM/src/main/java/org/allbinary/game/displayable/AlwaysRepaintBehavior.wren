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
import "./RepaintBehavior" for RepaintBehavior

class AlwaysRepaintBehavior is RepaintBehavior {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = AlwaysRepaintBehavior.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }
  NAME { _NAME }
  NAME=(value) { _NAME = value }

  initFields_AlwaysRepaintBehavior() {
    _NAME = null
        _NAME = "AlwaysRepaintBehavior"
  }

  construct new() {
    super()
    initFields_AlwaysRepaintBehavior()
  }
    

    static getInstance() {
        return AlwaysRepaintBehavior.instanceC
    }
    

    repaint(canvas) {
        var features = Features.getInstance()
        var openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process()
        } else {
            var thread = Thread.new(RepaintRunnable.new(canvas), _NAME)
            thread.start()
        }
    }
    

    onChangeRepaint(canvas) {
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../java/lang/Thread" for Thread
import "./RepaintRunnable" for RepaintRunnable

