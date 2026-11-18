/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.font

import "../../../../allbinary_java" for JObject, JException, JR
import "./MyFontProcessor" for MyFontProcessor

class UpdateMyFontProcessor is MyFontProcessor {
  updateMeasurementProcessor { _updateMeasurementProcessor }
  updateMeasurementProcessor=(value) { _updateMeasurementProcessor = value }

  initFields_UpdateMyFontProcessor() {
    _updateMeasurementProcessor = null
        
  }
    

    construct new(keyValueDrawCharArray) {
    super()
    initFields_UpdateMyFontProcessor()
        _updateMeasurementProcessor = keyValueDrawCharArray
    }
    

    process(graphics) {
        _updateMeasurementProcessor.updateMeasurement(graphics)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./UpdateMyFontInterface" for UpdateMyFontInterface

