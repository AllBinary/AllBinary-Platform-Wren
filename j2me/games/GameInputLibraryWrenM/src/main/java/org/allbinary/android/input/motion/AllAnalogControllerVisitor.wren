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
// package org.allbinary.android.input.motion

import "../../../../../allbinary_java" for JObject, JException, JR
import "./AnalogControllerVisitor" for AnalogControllerVisitor

class AllAnalogControllerVisitor is AnalogControllerVisitor {

  initFields_AllAnalogControllerVisitor() {
  }

  construct new() {
    super()
    initFields_AllAnalogControllerVisitor()
  }
    

    process(allbinaryLayerManager, analogLocationInputProcessor) {
        var analogLocationInputList = AnalogLocationInputFactory.getInstance().getList()
        var analogLocationInput = null
        if (true) {
            var index = JR.i32(analogLocationInputList.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            analogLocationInput = analogLocationInputList.get(index)
            analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
            }
        }
    }
}

import "../../../../../org/allbinary/game/input/analog/AnalogLocationInput" for AnalogLocationInput
import "../../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory" for AnalogLocationInputFactory
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./AnalogLocationInputProcessor" for AnalogLocationInputProcessor

