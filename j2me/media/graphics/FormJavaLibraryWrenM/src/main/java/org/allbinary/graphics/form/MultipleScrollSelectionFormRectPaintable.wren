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
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class MultipleScrollSelectionFormRectPaintable is Paintable {
  multipleScrollSelectionForm { _multipleScrollSelectionForm }
  multipleScrollSelectionForm=(value) { _multipleScrollSelectionForm = value }

  initFields_MultipleScrollSelectionFormRectPaintable() {
    _multipleScrollSelectionForm = null
        
  }
    

    construct new(multipleScrollSelectionForm) {
    super()
    initFields_MultipleScrollSelectionFormRectPaintable()
        _multipleScrollSelectionForm = multipleScrollSelectionForm
    }
    

    paint(graphics) {
        _multipleScrollSelectionForm.fillRect(graphics)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./MultipleScrollSelectionHorizontalForm" for MultipleScrollSelectionHorizontalForm

