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
// package org.allbinary.game.ag.layer.hud.basic

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/canvas/Processor" for Processor

class NextUnremoveableProcessor is Processor {
  updateMeasurementProcessor { _updateMeasurementProcessor }
  updateMeasurementProcessor=(value) { _updateMeasurementProcessor = value }

  initFields_NextUnremoveableProcessor() {
    _updateMeasurementProcessor = null
        
  }
    

    construct new(updateMeasurementProcessor) {
    super()
    initFields_NextUnremoveableProcessor()
        _updateMeasurementProcessor = updateMeasurementProcessor
    }
    

    process() {
        _updateMeasurementProcessor.setNextUnremoveableProcess()
    }
}

import "./PlayerGameNotificationHud" for PlayerGameNotificationHud

