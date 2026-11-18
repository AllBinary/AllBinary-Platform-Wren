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
// package org.allbinary.ai

import "../../../allbinary_java" for JObject, JException, JR

class ArtificialIntelligence is JObject {
    static AI_ID { 2 }
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ArtificialIntelligence.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ArtificialIntelligence() {
  }
    

    static getInstance() {
        return ArtificialIntelligence.instance
    }
    

    construct new() {
    super()
    initFields_ArtificialIntelligence()
    }
    

    processAI(layerManager) {
    }
    

    getId() {
        return 1
    }
}

import "../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "./ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface

