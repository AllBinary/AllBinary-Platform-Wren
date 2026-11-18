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
import "./BaseImageAnimationFactory" for BaseImageAnimationFactory

class VectorToImageArrayRotationAnimationFactory is BaseImageAnimationFactory {
  imageArray { _imageArray }
  imageArray=(value) { _imageArray = value }
  angleIncrement { _angleIncrement }
  angleIncrement=(value) { _angleIncrement = value }

  initFields_VectorToImageArrayRotationAnimationFactory() {
    _imageArray = null
    _angleIncrement = 0
        _imageArray = NullImage.NULL_IMAGE_ARRAY
        _angleIncrement = 0
  }
    

    construct new(vectorInfo, basicColor, animationBehaviorFactory) {
        super(AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        initFields_VectorToImageArrayRotationAnimationFactory()
        this.init()
    }
    

    init() {
        var angleFactory = AngleFactory.getInstance()
        _angleIncrement = (angleFactory.TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity())
        _imageArray = ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), JR.i32(angleFactory.TOTAL_ANGLE))
    }
    

    getInstance(instanceId) {
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            return AdjustedImageArrayRotationAnimation.new(_imageArray, AngleInfo.getInstance(JR.i16(this.getAngleIncrement())), JR.i32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return AdjustedImageArrayRotationAnimation.createAnimation(_imageArray, AngleInfo.getInstance(JR.i16(_angleIncrement)), JR.i32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    getAngleIncrement() {
        return _angleIncrement
    }
    

    setInitialScale(scaleProperties) {
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/VectorAnimation" for VectorAnimation
import "../../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/image/AnimationFrameToImageUtil" for AnimationFrameToImageUtil
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil" for ImageToRotationImageArrayUtil
import "../../../../org/allbinary/vector/VectorInfo" for VectorInfo
import "./AdjustedImageArrayRotationAnimation" for AdjustedImageArrayRotationAnimation

