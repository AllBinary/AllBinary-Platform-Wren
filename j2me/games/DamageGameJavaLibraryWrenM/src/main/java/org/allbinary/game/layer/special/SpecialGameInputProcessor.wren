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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/input/GameInputProcessor" for GameInputProcessor

class SpecialGameInputProcessor is GameInputProcessor {
  collidableDestroyableDamageableLayer { _collidableDestroyableDamageableLayer }
  collidableDestroyableDamageableLayer=(value) { _collidableDestroyableDamageableLayer = value }

  initFields_SpecialGameInputProcessor() {
    _collidableDestroyableDamageableLayer = null
        
  }
    

    construct new(collidableDestroyableDamageableLayer) {
    super()
    initFields_SpecialGameInputProcessor()
        _collidableDestroyableDamageableLayer = collidableDestroyableDamageableLayer
    }
}

import "./CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer

