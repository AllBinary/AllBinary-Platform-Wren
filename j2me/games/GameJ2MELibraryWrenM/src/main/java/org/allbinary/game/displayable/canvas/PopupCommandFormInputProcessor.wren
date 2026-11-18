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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "./CommandFormInputProcessor" for CommandFormInputProcessor

class PopupCommandFormInputProcessor is CommandFormInputProcessor {

  initFields_PopupCommandFormInputProcessor() {
  }
    

    construct new(gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor) {
        super(gameKeyEventList, playerInputId, gameCanvas, form)
    }
    

    processInput(key) {
        return super.processInput(key)
    }
    

    processMotionInput(motionGestureEvent) {
        super.processMotionInput(motionGestureEvent)
    }
}

import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./PopupMenuInputProcessor" for PopupMenuInputProcessor

