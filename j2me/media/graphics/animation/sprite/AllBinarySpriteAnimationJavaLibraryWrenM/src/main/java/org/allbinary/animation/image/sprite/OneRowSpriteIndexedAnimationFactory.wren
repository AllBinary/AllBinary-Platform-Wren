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

class OneRowSpriteIndexedAnimationFactory is BaseImageAnimationFactory {
  animationFactorySpriteScaleUtil { _animationFactorySpriteScaleUtil }
  animationFactorySpriteScaleUtil=(value) { _animationFactorySpriteScaleUtil = value }

  initFields_OneRowSpriteIndexedAnimationFactory() {
    _animationFactorySpriteScaleUtil = null
        _animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
  }
    

    static createFactoryDX(image, dx, animationBehaviorFactory) {
        var oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.initW(dx)
        return oneRowSpriteIndexedAnimationFactory
    }
    

    static createFactoryDXY(image, dx, dy, animationBehaviorFactory) {
        var oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.init(dx, dy)
        return oneRowSpriteIndexedAnimationFactory
    }
    

    static createFactoryWH(image, width, height, animationBehaviorFactory) {
        return OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    }
    

    static createFactory(image, animationBehaviorFactory) {
        return OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    }
    

    construct new(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initFields_OneRowSpriteIndexedAnimationFactory()
    }
    

    init(dx, dy) {
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy
    }
    

    initW(dx) {
        this.init(dx, 0)
        this.animationFactoryInitializationVisitor.dx = (this.animationFactoryInitializationVisitor.dx + -(JR.shr(this.animationFactoryInitializationVisitor.width, 2)))
    }
    

    getInstance(instanceId) {
        var sprite = _animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        if (((this.animationFactoryInitializationVisitor.dx != 0) || (this.animationFactoryInitializationVisitor.dy != 0))) {
            return AdjustedSpriteIndexedAnimation.new(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return SpriteIndexedAnimation.new(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorUtil" for BasicColorUtil
import "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" for AnimationFactorySpriteScaleUtil
import "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "./SpriteIndexedAnimation" for SpriteIndexedAnimation
import "./AdjustedSpriteIndexedAnimation" for AdjustedSpriteIndexedAnimation

