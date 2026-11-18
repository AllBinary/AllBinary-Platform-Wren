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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR

//TWB - Adjustments should be done in the resource creation and not at the animation level
class PooledImageArrayRotationAnimationFactory is JObject {
  allBinaryImageRotationAnimationInfo { _allBinaryImageRotationAnimationInfo }
  allBinaryImageRotationAnimationInfo=(value) { _allBinaryImageRotationAnimationInfo = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_PooledImageArrayRotationAnimationFactory() {
    _allBinaryImageRotationAnimationInfo = null
    _animationBehaviorFactory = null
        _allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT
        
  }
    

    static createFactory(image, animationBehaviorFactory) {
        var totalAngle = JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)
        var angleIncrement = ((totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity()))
        return PooledImageArrayRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), -(JR.shr(image.getWidth(), 2)), -(JR.shr(image.getHeight(), 2)), angleIncrement, animationBehaviorFactory)
    }
    

    static createDXY(image, dx, dy, animationBehaviorFactory) {
        var totalAngle = JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)
        var angleIncrement = ((totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity()))
        return PooledImageArrayRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory)
    }
    

    construct new(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory) {
    super()
    initFields_PooledImageArrayRotationAnimationFactory()
        _animationBehaviorFactory = animationBehaviorFactory
        var totalAngle = JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)
        var imageArray = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle)
        _allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo.new(imageArray, angleIncrement, totalAngle, dx, dy)
    }
    

    getInstance(instanceId) {
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(_allBinaryImageRotationAnimationInfo, _animationBehaviorFactory.getOrCreateInstance())
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil" for ImageToRotationImageArrayUtil
import "./ImageArrayRotationAnimationInfo" for ImageArrayRotationAnimationInfo
import "./AdjustedImageArrayRotationAnimation" for AdjustedImageArrayRotationAnimation

