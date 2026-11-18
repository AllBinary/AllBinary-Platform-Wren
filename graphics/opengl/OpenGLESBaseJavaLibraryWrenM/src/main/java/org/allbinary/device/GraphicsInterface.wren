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
// package org.allbinary.device

import "../../../allbinary_java" for JObject, JException, JR

class GraphicsInterface is JObject {
    

    setFontDebug(font, fontDebug) {
        Fiber.abort(JR.exception("AbstractMethodError", "setFontDebug"))
    }
}

import "../../../javax/microedition/lcdui/Font" for Font
import "../../../org/allbinary/graphics/font/FontDebugBase" for FontDebugBase

