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

class GameInputProcessorUtil is JObject {

  initFields_GameInputProcessorUtil() {
  }

  construct new() {
    super()
    initFields_GameInputProcessorUtil()
  }
    

    static init(inputProcessorArray) {
        var noInputProcessor = GameInputProcessor.getInstance()
        var total = InputFactory.getInstance().MAX
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < total))) break
            var inputProcessorCanBeNull = inputProcessorArray[index]
            if ((inputProcessorCanBeNull == null)) {
                inputProcessorArray[index] = noInputProcessor
            }
            }
        }
    }
}

import "./GameInputProcessor" for GameInputProcessor
import "./InputFactory" for InputFactory

