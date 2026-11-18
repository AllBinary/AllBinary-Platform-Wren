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
// package org.allbinary.animation.image.sprite

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/animation/image/BaseImageAnimationFactory" for BaseImageAnimationFactory

class AllBinarySpriteRotationAnimationFactory is BaseImageAnimationFactory {
  animationFactorySpriteScaleUtil { _animationFactorySpriteScaleUtil }
  animationFactorySpriteScaleUtil=(value) { _animationFactorySpriteScaleUtil = value }

  initFields_AllBinarySpriteRotationAnimationFactory() {
    _animationFactorySpriteScaleUtil = null
        _animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
  }
    

    static createWHDY(image, dx, dy, animationBehaviorFactory) {
        var spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), (JR.shr(image.getHeight(), 2)), (JR.shr(image.getHeight(), 2)), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.initWH(dx, dy)
        return spriteRotationAnimationFactory
    }
    

    static createWH(image, animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory)
    }
    

    static createDXY(image, dx, dy, animationBehaviorFactory) {
        var spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory
    }
    

    static createDXYQ(image, dx, dy, animationBehaviorFactory) {
        var spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), (JR.shr(image.getHeight(), 2)), (JR.shr(image.getHeight(), 2)), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory
    }
    

    static createQ(image, animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), (JR.shr(image.getHeight(), 2)), (JR.shr(image.getHeight(), 2)), 0, 0, animationBehaviorFactory)
    }
    

    static createWHF(image, animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    }
    

    construct new(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFields_AllBinarySpriteRotationAnimationFactory()
        if ((animationBehaviorFactory == AnimationBehaviorFactory.getInstance())) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        }
    }
    

    init(dx, dy) {
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
    }
    

    initWH(dx, dy) {
        this.init(dx, dy)
        this.animationFactoryInitializationVisitor.dx = (this.animationFactoryInitializationVisitor.dx + (-this.animationFactoryInitializationVisitor.width / 5))
        this.animationFactoryInitializationVisitor.dy = (this.animationFactoryInitializationVisitor.dy + (-this.animationFactoryInitializationVisitor.height / 5))
    }
    

    getInstance(instanceId) {
        var sprite = _animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            return AllBinaryAdjustedSpriteRotationAnimation.new(sprite, this.getImage(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return AllBinarySpriteRotationAnimation.new(sprite, this.getImage(), this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    getInstanceAnimation(animationInterface) {
        return this.getInstance(0)
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../../org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" for AnimationFactorySpriteScaleUtil
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "./AllBinarySpriteRotationAnimation" for AllBinarySpriteRotationAnimation
import "./AllBinaryAdjustedSpriteRotationAnimation" for AllBinaryAdjustedSpriteRotationAnimation

