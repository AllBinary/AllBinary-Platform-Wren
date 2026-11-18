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
import "./ItemPaintableFactory" for ItemPaintableFactory

class LockableFormPaintableFactory is ItemPaintableFactory {
  lockedIndex { _lockedIndex }
  lockedIndex=(value) { _lockedIndex = value }

  initFields_LockableFormPaintableFactory() {
    _lockedIndex = 0
        
  }
    

    construct new(lockedIndex) {
    super()
    initFields_LockableFormPaintableFactory()
        _lockedIndex = lockedIndex
    }
    

    getInstanceItemPaintable(paintableForm) {
        return LockablePaintable.new(_lockedIndex)
    }
}

import "./LockablePaintable" for LockablePaintable
import "./ItemPaintable" for ItemPaintable
import "./PaintableForm" for PaintableForm

