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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR

class RotationAnimationFactory is JObject {
  totalAngle { _totalAngle }
  totalAngle=(value) { _totalAngle = value }
  angleIncrement { _angleIncrement }
  angleIncrement=(value) { _angleIncrement = value }

  initFields_RotationAnimationFactory() {
    _totalAngle = 0
    _angleIncrement = 0
        
        
  }
    

    static createFactory() {
        var totalAngle = AngleFactory.getInstance().TOTAL_ANGLE
        return RotationAnimationFactory.new(totalAngle, JR.i16(((totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity()))))
    }
    

    construct new(totalAngle, angleIncrement) {
    super()
    initFields_RotationAnimationFactory()
        _totalAngle = totalAngle
        _angleIncrement = angleIncrement
    }
    

    getInstance(instanceId) {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(_angleIncrement), _totalAngle, AnimationBehavior.getInstance())
    }
    

    getInstanceAnimation(animationInterface) {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(_angleIncrement), _totalAngle, AnimationBehavior.getInstance())
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./NullRotationAnimation" for NullRotationAnimation
import "./AnimationBehavior" for AnimationBehavior
import "./Animation" for Animation

