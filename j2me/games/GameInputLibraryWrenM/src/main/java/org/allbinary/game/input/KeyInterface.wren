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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class KeyInterface is JObject {
    

    keyPressed(keyCode) {
        Fiber.abort(JR.exception("AbstractMethodError", "keyPressed"))
    }
    

    keyReleased(keyCode) {
        Fiber.abort(JR.exception("AbstractMethodError", "keyReleased"))
    }
    

    keyPressedByDevice(keyCode, deviceId) {
        Fiber.abort(JR.exception("AbstractMethodError", "keyPressedByDevice"))
    }
    

    keyReleasedByDevice(keyCode, deviceId) {
        Fiber.abort(JR.exception("AbstractMethodError", "keyReleasedByDevice"))
    }
}


