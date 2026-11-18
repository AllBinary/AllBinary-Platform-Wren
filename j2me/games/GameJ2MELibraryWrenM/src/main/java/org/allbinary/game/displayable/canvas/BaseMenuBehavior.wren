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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR

class BaseMenuBehavior is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = BaseMenuBehavior.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_BaseMenuBehavior() {
  }

  construct new() {
    super()
    initFields_BaseMenuBehavior()
  }
    

    static getInstance() {
        return BaseMenuBehavior.instance
    }
    

    onDisplayChangeEvent(allBinaryGameCanvas, displayChangeEvent) {
    }
    

    initSpecialPaint(allBinaryGameCanvas) {
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance())
    }
    

    initMenu(allBinaryGameCanvas) {
    }
    

    updateMenu(allBinaryGameCanvas) {
    }
    

    popupMenu(allBinaryGameCanvas) {
    }
    

    closeMenu(allBinaryGameCanvas) {
    }
}

import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

