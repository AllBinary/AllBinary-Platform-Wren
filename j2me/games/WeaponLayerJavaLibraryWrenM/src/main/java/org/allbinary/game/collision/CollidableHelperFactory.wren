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
// package org.allbinary.game.collision

import "../../../../allbinary_java" for JObject, JException, JR

class CollidableHelperFactory is JObject {

  initFields_CollidableHelperFactory() {
  }

  construct new() {
    super()
    initFields_CollidableHelperFactory()
  }
    

    static getInstance() {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().COLLISIONS_WITH_SOURCE)) {
            return CollisionHelper.new(AllBinaryLayer.NULL_ALLBINARY_LAYER)
        } else {
            return SourceCollisionHelper.new(AllBinaryLayer.NULL_ALLBINARY_LAYER)
        }
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "./SourceCollisionHelper" for SourceCollisionHelper
import "./CollisionHelper" for CollisionHelper

