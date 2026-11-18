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
import "./ItemIndexDx" for ItemIndexDx

class ScrollSelectionFormVericalDx is ItemIndexDx {
  scrollSelectionForm { _scrollSelectionForm }
  scrollSelectionForm=(value) { _scrollSelectionForm = value }

  initFields_ScrollSelectionFormVericalDx() {
    _scrollSelectionForm = null
        
  }
    

    construct new(scrollSelectionForm) {
    super()
    initFields_ScrollSelectionFormVericalDx()
        _scrollSelectionForm = scrollSelectionForm
    }
    

    getDx(index, item, dx, dy) {
        return _scrollSelectionForm.getSelectedIndexForPointVerticalDx(index, item, dx, dy)
    }
}

import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "./ScrollSelectionForm" for ScrollSelectionForm

