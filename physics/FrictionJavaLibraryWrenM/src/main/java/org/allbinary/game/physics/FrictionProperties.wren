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
// package org.allbinary.game.physics

import "../../../../allbinary_java" for JObject, JException, JR

class FrictionProperties is JObject {

  initFields_FrictionProperties() {
  }
    

    construct new() {
    super()
    initFields_FrictionProperties()
    }
    

    friction(velocityProperties, nominator) {
        DragVelocityBehavior.instance.reduce(velocityProperties, nominator, FrictionData.getFrictionDenominator())
    }
}

import "../../../../org/allbinary/game/physics/friction/FrictionData" for FrictionData
import "../../../../org/allbinary/game/physics/velocity/DragVelocityBehavior" for DragVelocityBehavior
import "../../../../org/allbinary/game/physics/velocity/VelocityProperties" for VelocityProperties

