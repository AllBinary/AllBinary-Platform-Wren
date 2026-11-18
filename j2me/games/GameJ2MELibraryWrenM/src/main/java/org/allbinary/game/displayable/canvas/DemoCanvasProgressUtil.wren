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

class DemoCanvasProgressUtil is JObject {

  initFields_DemoCanvasProgressUtil() {
  }

  construct new() {
    super()
    initFields_DemoCanvasProgressUtil()
  }
    

    static showProgress(demoCanvas) {
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false)
    }
    

    static showProgressOptionallyInTheBackground(demoCanvas, background) {
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.startBackground(background)
        var paintableArray = List.filled(2, null)
        paintableArray[0] = progressCanvas
        paintableArray[1] = demoCanvas.getDefaultPaintableInterface()
        demoCanvas.setDefaultPaintableInterface(PaintableComposite.new(paintableArray))
        demoCanvas.setPaintableInterface(demoCanvas.getDefaultPaintableInterface())
    }
}

import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../../org/allbinary/graphics/paint/PaintableComposite" for PaintableComposite
import "../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "./DemoCanvas" for DemoCanvas

