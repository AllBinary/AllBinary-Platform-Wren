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
// package org.allbinary.game.health

import "../../../../allbinary_java" for JObject, JException, JR

class HealthInterface is JObject {
    

    isAlive() {
        Fiber.abort(JR.exception("AbstractMethodError", "isAlive"))
    }
    

    damage(ahealth) {
        Fiber.abort(JR.exception("AbstractMethodError", "damage"))
    }
    

    heal(ahealth) {
        Fiber.abort(JR.exception("AbstractMethodError", "heal"))
    }
    

    healMax() {
        Fiber.abort(JR.exception("AbstractMethodError", "healMax"))
    }
    

    getMaxHealth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getMaxHealth"))
    }
    

    setMaxHealth(maxHealth) {
        Fiber.abort(JR.exception("AbstractMethodError", "setMaxHealth"))
    }
    

    getHealth() {
        Fiber.abort(JR.exception("AbstractMethodError", "getHealth"))
    }
    

    addListener(healthListenerInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "addListener"))
    }
}

import "./HealthListenerInterface" for HealthListenerInterface

