/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class InputProcessorFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = InputProcessorFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  inputProcessor { _inputProcessor }
  inputProcessor=(value) { _inputProcessor = value }

  initFields_InputProcessorFactory() {
    _inputProcessor = null
        _inputProcessor = InputProcessor.new()
  }

  construct new() {
    super()
    initFields_InputProcessorFactory()
  }
    

    static getInstance() {
        return InputProcessorFactory.instance
    }
    

    getInputProcessor() {
        return _inputProcessor
    }
}

import "./InputProcessor" for InputProcessor

