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
import "./BaseMenuBehavior" for BaseMenuBehavior

class InGameMenuBehavior is BaseMenuBehavior {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = InGameMenuBehavior.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }

  initFields_InGameMenuBehavior() {
  }

  construct new() {
    super()
    initFields_InGameMenuBehavior()
  }
    

    static getInstance() {
        return InGameMenuBehavior.instanceC
    }
    

    onDisplayChangeEvent(allBinaryGameCanvas, displayChangeEvent) {
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent)
    }
    

    initSpecialPaint(allBinaryGameCanvas) {
        allBinaryGameCanvas.setNonBotPaintableP(GameCanvasNonBotPaintable.new(allBinaryGameCanvas))
    }
    

    initMenu(allBinaryGameCanvas) {
        allBinaryGameCanvas.initMenu2()
    }
    

    updateMenu(allBinaryGameCanvas) {
        allBinaryGameCanvas.initMenu2()
    }
    

    popupMenu(allBinaryGameCanvas) {
        allBinaryGameCanvas.popupMenu2()
    }
    

    closeMenu(allBinaryGameCanvas) {
        allBinaryGameCanvas.closeMenu2()
    }
}

import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas
import "./GameCanvasNonBotPaintable" for GameCanvasNonBotPaintable

