/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/form/item/CustomTextBox" for CustomTextBox

class CustomTextBox2 is CustomTextBox {

  initFields_CustomTextBox2() {
  }
    

    construct new(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor) {
        super(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        this.getTextFieldItem().setFocus(true)
    }
}

import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

