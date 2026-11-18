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

class SpriteIndexedAnimationFactory is BaseImageAnimationFactory {
  animationFactorySpriteScaleUtil { _animationFactorySpriteScaleUtil }
  animationFactorySpriteScaleUtil=(value) { _animationFactorySpriteScaleUtil = value }
  basicColorArray { _basicColorArray }
  basicColorArray=(value) { _basicColorArray = value }

  initFields_SpriteIndexedAnimationFactory() {
    _animationFactorySpriteScaleUtil = null
    _basicColorArray = null
        _animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
        _basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY
  }
    

    static createCWHDXY(image, basicColorArray, width, height, dx, dy, animationBehaviorFactory) {
        return SpriteIndexedAnimationFactory.new(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    }
    

    static createCWH(image, basicColorArray, width, height, animationBehaviorFactory) {
        var spriteIndexedAnimationFactory = SpriteIndexedAnimationFactory.new(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        spriteIndexedAnimationFactory.initHWH()
        return spriteIndexedAnimationFactory
    }
    

    static createWH(image, width, height, animationBehaviorFactory) {
        return SpriteIndexedAnimationFactory.new(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    }
    

    construct new(image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFields_SpriteIndexedAnimationFactory()
        _basicColorArray = basicColorArray
    }
    

    initHWH() {
        this.animationFactoryInitializationVisitor.dx = -(JR.shr(this.animationFactoryInitializationVisitor.width, 2))
        this.animationFactoryInitializationVisitor.dy = -(JR.shr(this.animationFactoryInitializationVisitor.height, 2))
        if (AndroidUtil.isAndroid()) {
            this.animationFactoryInitializationVisitor.dx = (this.animationFactoryInitializationVisitor.dx + 3)
        }
    }
    

    getInstance(instanceId) {
        var sprite = _animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            return AdjustedSpriteIndexedAnimation.new(sprite, this.getImage(), _basicColorArray, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return SpriteIndexedAnimation.new(sprite, this.getImage(), _basicColorArray, this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    getInstanceAnimation(animationInterface) {
        return this.getInstance(0)
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../../org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorUtil" for BasicColorUtil
import "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" for AnimationFactorySpriteScaleUtil
import "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "./SpriteIndexedAnimation" for SpriteIndexedAnimation
import "./AdjustedSpriteIndexedAnimation" for AdjustedSpriteIndexedAnimation

