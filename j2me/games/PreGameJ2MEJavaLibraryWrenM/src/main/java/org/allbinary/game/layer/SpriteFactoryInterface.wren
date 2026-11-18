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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR

class SpriteFactoryInterface is JObject {
    

    createSprite(image, frameWidth, frameHeight) {
        Fiber.abort(JR.exception("AbstractMethodError", "createSprite"))
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/game/Sprite" for Sprite

