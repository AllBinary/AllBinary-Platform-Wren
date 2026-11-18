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
import "../../../../org/allbinary/canvas/Processor" for Processor

class TempHorizontalFormProcessor is Processor {
  scrollCurrentSelectionForm { _scrollCurrentSelectionForm }
  scrollCurrentSelectionForm=(value) { _scrollCurrentSelectionForm = value }

  initFields_TempHorizontalFormProcessor() {
    _scrollCurrentSelectionForm = null
        
  }
    

    construct new(scrollCurrentSelectionForm) {
    super()
    initFields_TempHorizontalFormProcessor()
        _scrollCurrentSelectionForm = scrollCurrentSelectionForm
    }
    

    process() {
        _scrollCurrentSelectionForm.processTempHorizontalForm()
        _scrollCurrentSelectionForm.processor = Processor.getInstance()
    }
}

import "./ScrollCurrentSelectionForm" for ScrollCurrentSelectionForm

