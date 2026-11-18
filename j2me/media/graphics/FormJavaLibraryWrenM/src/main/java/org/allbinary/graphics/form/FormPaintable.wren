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

class FormPaintable is Paintable {
  form { _form }
  form=(value) { _form = value }

  initFields_FormPaintable() {
    _form = null
        
  }
    

    construct new(form) {
    super()
    initFields_FormPaintable()
        _form = form
    }
    

    paint(graphics) {
        _form.paint(graphics)
    }
    

    getForm() {
        return _form
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "./PaintableForm" for PaintableForm

