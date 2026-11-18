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
import "./ItemIndexPaintable" for ItemIndexPaintable

class MultipleScrollSelectionFormVerticalPaintable is ItemIndexPaintable {
  multipleScrollSelectionForm { _multipleScrollSelectionForm }
  multipleScrollSelectionForm=(value) { _multipleScrollSelectionForm = value }

  initFields_MultipleScrollSelectionFormVerticalPaintable() {
    _multipleScrollSelectionForm = null
        
  }
    

    construct new(multipleScrollSelectionForm) {
    super()
    initFields_MultipleScrollSelectionFormVerticalPaintable()
        _multipleScrollSelectionForm = multipleScrollSelectionForm
    }
    

    paint(graphics, index, item, dx, dy) {
        return _multipleScrollSelectionForm.paintVertical(graphics, index, item, dx, dy)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "./MultipleScrollSelectionHorizontalForm" for MultipleScrollSelectionHorizontalForm

