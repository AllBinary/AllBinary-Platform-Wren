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
// package org.allbinary.graphics.canvas.transition.progress

import "../../../../../../allbinary_java" for JObject, JException, JR

class ProgressCanvasFactory is JObject {
    static PROGRESS_FORM_SCREEN {
    if (__PROGRESS_FORM_SCREEN_set == null) {
      __PROGRESS_FORM_SCREEN_set = true
      __PROGRESS_FORM_SCREEN = NullUtil.getInstance().NULL_OBJECT
    }
    return __PROGRESS_FORM_SCREEN
  }
  static PROGRESS_FORM_SCREEN=(value) {
    __PROGRESS_FORM_SCREEN_set = true
    __PROGRESS_FORM_SCREEN = value
  }

  initFields_ProgressCanvasFactory() {
  }

  construct new() {
    super()
    initFields_ProgressCanvasFactory()
  }
    

    static getInstance() {
        if ((ProgressCanvasFactory.PROGRESS_FORM_SCREEN == NullUtil.getInstance().NULL_OBJECT)) {
            ProgressCanvasFactory.PROGRESS_FORM_SCREEN = ProgressCanvas.new(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return ProgressCanvasFactory.PROGRESS_FORM_SCREEN
    }
    

    static getLazyInstance() {
        return NullPaintable.getInstance()
    }
}

import "../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./ProgressCanvas" for ProgressCanvas

