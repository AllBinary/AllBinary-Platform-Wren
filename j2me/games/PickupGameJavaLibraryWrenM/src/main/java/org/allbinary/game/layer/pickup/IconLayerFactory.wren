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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR

class IconLayerFactory is JObject {

  initFields_IconLayerFactory() {
  }

  construct new() {
    super()
    initFields_IconLayerFactory()
  }
    

    static getInstance(animationInterface, width, height) {
        return IconLayer.new(animationInterface, width, height)
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "./IconLayer" for IconLayer

