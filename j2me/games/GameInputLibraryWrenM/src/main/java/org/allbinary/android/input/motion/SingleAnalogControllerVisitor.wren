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

class SingleAnalogControllerVisitor is AnalogControllerVisitor {
  playerInputId { _playerInputId }
  playerInputId=(value) { _playerInputId = value }

  initFields_SingleAnalogControllerVisitor() {
    _playerInputId = 0
        
  }
    

    construct new(playerInputId) {
    super()
    initFields_SingleAnalogControllerVisitor()
        _playerInputId = playerInputId
    }
    

    process(allbinaryLayerManager, analogLocationInputProcessor) {
        var analogLocationInput = AnalogLocationInputFactory.getInstance().getInstanceForPlayer(_playerInputId)
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
    }
}

import "../../../../../org/allbinary/game/input/analog/AnalogLocationInput" for AnalogLocationInput
import "../../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory" for AnalogLocationInputFactory
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./AnalogLocationInputProcessor" for AnalogLocationInputProcessor

