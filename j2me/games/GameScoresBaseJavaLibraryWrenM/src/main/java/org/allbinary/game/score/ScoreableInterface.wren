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

class ScoreableInterface is JObject {
    

    getPoints() {
        Fiber.abort(JR.exception("AbstractMethodError", "getPoints"))
    }
    

    addPoints(points) {
        Fiber.abort(JR.exception("AbstractMethodError", "addPoints"))
    }
    

    removePoints(points) {
        Fiber.abort(JR.exception("AbstractMethodError", "removePoints"))
    }
}


