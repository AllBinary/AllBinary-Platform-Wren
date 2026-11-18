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
// package org.allbinary.game.part.weapon

import "../../../../../allbinary_java" for JObject, JException, JR

class SalvoInterface is JObject {
    

    process(allbinaryLayerManager, angle, otherAngle) {
        Fiber.abort(JR.exception("AbstractMethodError", "process"))
    }
    

    processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface) {
        Fiber.abort(JR.exception("AbstractMethodError", "processScore"))
    }
}

import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

