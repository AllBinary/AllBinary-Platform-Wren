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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR
import "./HighScoresResultsListener" for HighScoresResultsListener

class HighScoresHelperBaseInterface is JObject {
    

    setSelectedHighScores(selectedHighScores) {
        Fiber.abort(JR.exception("AbstractMethodError", "setSelectedHighScores"))
    }
    

    getHighScoresArray() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHighScoresArray"))
    }
    

    getSelectedHighScores() {
        Fiber.abort(JR.exception("AbstractMethodError", "getSelectedHighScores"))
    }
}

import "./HighScores" for HighScores

