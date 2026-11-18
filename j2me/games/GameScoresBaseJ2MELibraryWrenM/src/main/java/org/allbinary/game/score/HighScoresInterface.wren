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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class HighScoresInterface is JObject {
    

    getList() {
        Fiber.abort(JR.exception("AbstractMethodError", "getList"))
    }
    

    addHighScore(newHighScore) {
        Fiber.abort(JR.exception("AbstractMethodError", "addHighScore"))
    }
    

    getTotal() {
        Fiber.abort(JR.exception("AbstractMethodError", "getTotal"))
    }
    

    isBestScore(newHighScore) {
        Fiber.abort(JR.exception("AbstractMethodError", "isBestScore"))
    }
}

import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./HighScore" for HighScore

