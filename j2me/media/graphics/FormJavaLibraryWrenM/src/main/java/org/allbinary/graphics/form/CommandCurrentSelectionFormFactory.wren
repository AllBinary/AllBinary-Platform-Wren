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

class CommandCurrentSelectionFormFactory is JObject {

  initFields_CommandCurrentSelectionFormFactory() {
  }

  construct new() {
    super()
    initFields_CommandCurrentSelectionFormFactory()
  }
    

    static getInstance(title, items, rectangle, formType, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor) {
        if (Features.getInstance().isFeature(TouchFeatureFactory.getInstance().TOUCH_ENABLED)) {
            var scrollSelectionForm = CommandCurrentSelectionForm.new(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            scrollSelectionForm.init(rectangle, formType)
            return scrollSelectionForm
        } else {
            return ScrollSelectionFormNoneFactory.getInstance()
        }
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory" for TouchFeatureFactory
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "./ScrollSelectionFormNoneFactory" for ScrollSelectionFormNoneFactory
import "./CommandCurrentSelectionForm" for CommandCurrentSelectionForm
import "./ScrollSelectionForm" for ScrollSelectionForm
import "./FormType" for FormType

