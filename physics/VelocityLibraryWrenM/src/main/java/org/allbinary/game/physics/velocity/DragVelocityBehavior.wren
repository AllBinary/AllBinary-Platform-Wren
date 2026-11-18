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
// package org.allbinary.game.physics.velocity

import "../../../../../allbinary_java" for JObject, JException, JR
import "./VelocityBehaviorBase" for VelocityBehaviorBase

class DragVelocityBehavior is VelocityBehaviorBase {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = DragVelocityBehavior.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_DragVelocityBehavior() {
  }

  construct new() {
    super()
    initFields_DragVelocityBehavior()
  }
    

    reduce(velocityProperties, nominator, denominator) {
        if ((velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != 0)) {
            var basicDecimal = velocityProperties.getVelocityXBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
        if ((velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0)) {
            var basicDecimal = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
    }
    

    reduceX(velocityProperties, nominator, denominator) {
        var basicDecimal = velocityProperties.getVelocityXBasicDecimalP()
        if ((basicDecimal.getUnscaled() != 0)) {
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
    }
    

    reduceY(velocityProperties, nominator, denominator) {
        if ((velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0)) {
            var basicDecimal = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
    }
}

import "../../../../../org/allbinary/logic/math/BasicDecimal" for BasicDecimal
import "./BasicVelocityProperties" for BasicVelocityProperties

