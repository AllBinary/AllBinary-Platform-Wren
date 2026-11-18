/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class TextInterface is JObject {
    

    setTextWithOnMeasure(text, textChangeListener) {
        Fiber.abort(JR.exception("AbstractMethodError", "setTextWithOnMeasure"))
    }
    

    getText() {
        Fiber.abort(JR.exception("AbstractMethodError", "getText"))
    }
    

    setText(text) {
        Fiber.abort(JR.exception("AbstractMethodError", "setText"))
    }
    

    getFontHeight() {
        Fiber.abort(JR.exception("AbstractMethodError", "getFontHeight"))
    }
    

    getWidth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getWidth"))
    }
}

import "./TextChangeListener" for TextChangeListener

