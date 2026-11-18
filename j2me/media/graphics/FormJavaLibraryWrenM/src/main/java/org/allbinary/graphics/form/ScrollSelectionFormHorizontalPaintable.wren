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

class ScrollSelectionFormHorizontalPaintable is ItemIndexPaintable {
  scrollSelectionForm { _scrollSelectionForm }
  scrollSelectionForm=(value) { _scrollSelectionForm = value }

  initFields_ScrollSelectionFormHorizontalPaintable() {
    _scrollSelectionForm = null
        
  }
    

    construct new(scrollSelectionForm) {
    super()
    initFields_ScrollSelectionFormHorizontalPaintable()
        _scrollSelectionForm = scrollSelectionForm
    }
    

    paint(graphics, index, item, dx, dy) {
        return _scrollSelectionForm.paintItemHorizontal(graphics, index, item, dx, dy)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "./ScrollSelectionForm" for ScrollSelectionForm

