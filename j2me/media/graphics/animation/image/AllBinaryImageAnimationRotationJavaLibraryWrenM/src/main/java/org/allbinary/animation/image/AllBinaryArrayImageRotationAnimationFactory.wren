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

class AllBinaryArrayImageRotationAnimationFactory is BaseImageAnimationFactory {
  imageArray { _imageArray }
  imageArray=(value) { _imageArray = value }
  angleIncrement { _angleIncrement }
  angleIncrement=(value) { _angleIncrement = value }

  initFields_AllBinaryArrayImageRotationAnimationFactory() {
    _imageArray = null
    _angleIncrement = 0
        _imageArray = NullImage.NULL_IMAGE_ARRAY
        
  }
    

    static createFactory(image, dx, dy) {
        var arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), (AngleFactory.getInstance().TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity()), AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    }
    

    static createFactoryA(image, dx, dy, angleIncrement) {
        var arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    }
    

    construct new(image, width, height, angleIncrement, animationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initFields_AllBinaryArrayImageRotationAnimationFactory()
        _angleIncrement = angleIncrement
        this.init()
    }
    

    init() {
        this.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)))
    }
    

    initDXY(dx, dy) {
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
        this.animationFactoryInitializationVisitor.originalDx = dx
        this.animationFactoryInitializationVisitor.originalDy = dy
    }
    

    getInstance(instanceId) {
        var scaledImageArray = List.filled(_imageArray.count, null)
        var size = scaledImageArray.count
        var image = this.getImage()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            scaledImageArray[index] = this.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
            }
        }
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            this.animationFactoryImageScaleUtil.processAdjust(this)
            return AdjustedImageArrayRotationAnimation.new(scaledImageArray, AngleInfo.getInstance(JR.i16(this.getAngleIncrement())), JR.i32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageArrayRotationAnimation.new(scaledImageArray, AngleInfo.getInstance(JR.i16(this.getAngleIncrement())), JR.i32(AngleFactory.getInstance().TOTAL_ANGLE), this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    setImageArray(imageArray) {
        _imageArray = imageArray
    }
    

    getAngleIncrement() {
        return _angleIncrement
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil" for ImageToRotationImageArrayUtil
import "./ImageArrayRotationAnimation" for ImageArrayRotationAnimation
import "./AdjustedImageArrayRotationAnimation" for AdjustedImageArrayRotationAnimation

